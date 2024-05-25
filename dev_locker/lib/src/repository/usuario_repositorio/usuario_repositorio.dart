import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lock/src/features/authentication/models/usuarios.dart';

class UsuarioRepositorio extends GetxController {
  static UsuarioRepositorio get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  Future<bool> createUser(UsuarioModel user) async {
    try {
      await _db.collection("Usuarios").add(user.toJson());
      Get.snackbar(
        "Éxito",
        "Tu cuenta ha sido creada",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.withOpacity(0.1),
        colorText: Colors.green,
      );
      return true;
    } catch (e) {
      Get.snackbar(
        "Error",
        "No se pudo crear el usuario",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.redAccent,
      );
      return false;
    }
  }
}
