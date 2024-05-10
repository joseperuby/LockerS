import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpController extends GetxController {
  final nombreCompleto = TextEditingController();
  final email = TextEditingController();
  final expediente = TextEditingController();
  final telefono = TextEditingController();
  final contrasena = TextEditingController();
  final repetircontrasena = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  Future<bool> usuarioRegistrado() async {
    if (contrasena.text.isEmpty || !contrasena.text.contains(RegExp(r'\d')) || contrasena.text.length < 6) {
      Get.snackbar(
        "Error de Contraseña",
        "La contraseña debe contener al menos 6 caracteres y números.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
        duration: Duration(seconds: 3),
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
        duration: Duration(seconds: 3),
      );
      return false;
    }

    if (!email.text.contains('@')) {
      Get.snackbar(
        "Error de Email",
        "Introduce un email válido.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
        duration: Duration(seconds: 3),
      );
      return false;
    }

    try {
      await auth.createUserWithEmailAndPassword(
        email: email.text,
        password: contrasena.text,
      );
      Get.snackbar(
        "Registro Exitoso",
        "El usuario ha sido registrado correctamente.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: Duration(seconds: 3),
      );
      return true;  // Navegación exitosa
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Get.snackbar(
          "Error de Registro",
          "El correo electrónico ya está en uso.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
          duration: Duration(seconds: 3),
        );
      } else {
        Get.snackbar(
          "Error de Registro",
          "Ocurrió un error durante el registro: ${e.message}",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
          duration: Duration(seconds: 3),
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
        duration: Duration(seconds: 3),
      );
      return false;
    }
  }
}
