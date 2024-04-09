import 'package:flutter/material.dart';
import 'package:lock/core/app_export.dart';

class NeumorphicTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final EdgeInsets? margin;
  final double? height;
  final double? width;

  NeumorphicTextField({
    Key? key,
    required this.hintText,
    this.controller,
    this.keyboardType,
    this.margin,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 66.v,
      width: width ?? double.maxFinite,
      margin: margin ?? EdgeInsets.all(15.v),
      decoration: BoxDecoration(
        color: Colors.grey[850], // Este es el color de fondo del widget
        borderRadius: BorderRadius.circular(20), // El radio de la esquina
        boxShadow: [
          // Sombra inferior derecha
          BoxShadow(
            color: Colors.black54,
            offset: Offset(4.v, 4.h),
            blurRadius: 15,
            spreadRadius: 1,
          ),
          // Sombra superior izquierda
          BoxShadow(
            color: Colors.grey.shade800, // Ajustar según tu color de fondo
            offset: Offset(-4.v, -4.h),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Center(
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.9), // Color del texto de sugerencia
              fontSize: 18,
            ),
            filled: true,
            fillColor: Colors.transparent, // El color de fondo del TextField
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
