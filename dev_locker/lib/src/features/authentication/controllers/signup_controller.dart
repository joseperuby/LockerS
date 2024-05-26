import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lock/routes/app_routes.dart';
import 'package:lock/src/features/authentication/models/usuarios.dart';
import 'package:lock/src/repository/usuario_repositorio/usuario_repositorio.dart';

class SignUpController extends GetxController {
  final nombreCompleto = TextEditingController();
  final email = TextEditingController();
  final expediente = TextEditingController();
  final telefono = TextEditingController();
  final contrasena = TextEditingController();
  final repetircontrasena = TextEditingController();
  String userRole = "alumno";
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  User? get currentUser => auth.currentUser;

  get isPasswordHidden => null;

  get togglePasswordView => null;

  Future<void> logOut() async {
    try {
      await auth.signOut();
      Get.offAllNamed(AppRoutes.welcomeScreen);
    } catch (e) {
      Get.snackbar(
        "Error de Cierre de Sesión",
        "Ocurrió un error al intentar cerrar sesión: ${e.toString()}",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
        duration: Duration(seconds: 3),
      );
    }
  }

  Future<void> signIn(String email, String password) async {
    try {
      // Intentar iniciar sesión con Firebase Authentication
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Si la autenticación es exitosa, verificar Firestore
      checkUserInFirestore(email, password);
    } on FirebaseAuthException catch (e) {
      // Manejo de errores específicos de FirebaseAuth
      if (e.code == 'invalid-credential') {
        // Intentar verificar en Firestore directamente
        checkUserInFirestore(email, password);
      } else {
        Get.snackbar(
          "Error de Inicio de Sesión",
          e.message ?? "Ocurrió un error desconocido",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }
  }

  Future<void> checkUserInFirestore(String email, String password) async {
    try {
      // Consultar Firestore para verificar si el usuario existe
      QuerySnapshot querySnapshot = await firestore
          .collection('Usuarios')
          .where('email', isEqualTo: email)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        var userDoc = querySnapshot.docs.first;
        var userData = userDoc.data() as Map<String, dynamic>;

        // Verificar la contraseña (esto no es seguro, pero se incluye como ejemplo)
        if (userData['contrasena'] == password) {
          // Autenticación exitosa, obtener el rol del usuario
          String role = userData['role'];
          if (role == 'admin') {
            Get.offAllNamed(AppRoutes.mainScreenAdmin);
          } else {
            Get.offAllNamed(AppRoutes.mainScreen);
          }
        } else {
          Get.snackbar(
            "Error de Inicio de Sesión",
            "Contraseña incorrecta",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.redAccent,
            colorText: Colors.white,
          );
        }
      } else {
        Get.snackbar(
          "Error de Inicio de Sesión",
          "Usuario no encontrado en Firestore",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Error de Inicio de Sesión",
        "Ocurrió un error al verificar Firestore: ${e.toString()}",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    }
  }

  Future<bool> usuarioRegistrado() async {
    if (nombreCompleto.text.isEmpty ||
        email.text.isEmpty ||
        expediente.text.isEmpty ||
        telefono.text.isEmpty ||
        contrasena.text.isEmpty ||
        repetircontrasena.text.isEmpty) {
      Get.snackbar(
        "Campos Incompletos",
        "Por favor, llene todos los campos requeridos.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return false;
    }

    if (contrasena.text.length < 6 ||
        !RegExp(r'\d').hasMatch(contrasena.text)) {
      Get.snackbar(
        "Error de Contraseña",
        "La contraseña debe tener al menos 6 caracteres y contener un número.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return false;
    }

    if (contrasena.text != repetircontrasena.text) {
      Get.snackbar(
        "Error de Contraseña",
        "Las contraseñas no coinciden.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return false;
    }

    if (!RegExp(r'^[0-9]+$').hasMatch(expediente.text)) {
      Get.snackbar(
        "Error en Expediente",
        "El expediente debe contener sólo números.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return false;
    }

    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: contrasena.text.trim(),
      );

      User? user = userCredential.user;
      if (user == null) {
        Get.snackbar(
          "Error de Registro",
          "No se pudo crear el usuario.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
        );
        return false;
      }

      String uid = user.uid;

      UsuarioModel newUser = UsuarioModel(
        email: email.text.trim(),
        nombreCompleto: nombreCompleto.text.trim(),
        expediente: expediente.text.trim(),
        telefono: telefono.text.trim(),
        contrasena: contrasena.text.trim(),
        role: "alumno",
      );

      await firestore.collection('Usuarios').doc(uid).set(newUser.toJson());
      userRole = newUser.role;
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Get.snackbar(
          "Error de Registro",
          "El correo electrónico ya está en uso.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
        );
      } else {
        Get.snackbar(
          "Error de Registro",
          "Ocurrió un error durante el registro: ${e.message}",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
        );
      }
      return false;
    } catch (e) {
      Get.snackbar(
        "Error de Registro",
        "Ocurrió un error desconocido.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return false;
    }
  }
}
