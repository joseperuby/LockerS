import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lock/src/constants/image_strings.dart';
import 'package:lock/widgets/custom_elevated_button.dart';
import 'package:lock/src/features/authentication/controllers/signup_controller.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final controller = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF474747),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage(tRegister), height: 150),
                const SizedBox(height: 5),
                Text(
                  "Bienvenido a LockerSport,",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 28.5,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                const SizedBox(height: 5),
                Text(
                  "Por favor, completa tus datos para continuar.",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16.5,
                      color: Colors.white),
                ),
                const SizedBox(height: 5),
                buildFormFields(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFormFields(BuildContext context) {
    return Form(
      key: _formKey,
      child: Theme(
        data: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.white),
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
            prefixIconColor: Colors.white,
            suffixIconColor: Colors.white,
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          ),
          textTheme: TextTheme(subtitle1: TextStyle(color: Colors.white)),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.nombreCompleto,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_rounded),
                    labelText: "Nombre Completo",
                    hintText: "Nombre Completo"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller.email,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "E-mail",
                    hintText: "E-mail"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller.expediente,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.numbers),
                    labelText: "Expediente",
                    hintText: "Expediente"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller.telefono,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: "Teléfono",
                    hintText: "Teléfono"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller.contrasena,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    labelText: "Contraseña",
                    hintText: "Contraseña"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller.repetircontrasena,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    labelText: "Repetir Contraseña",
                    hintText: "Repetir Contraseña"),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildRegistrar(context),
                  _buildCancelar(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRegistrar(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () async {
        if (_formKey.currentState!.validate()) {
          bool isRegistered = await controller.usuarioRegistrado();
          if (isRegistered) {
            onTapRegistrar(context);
          }
        }
      },
      height: 70,
      width: 160,
      text: "REGISTRAR",
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
      buttonTextStyle: Theme.of(context).textTheme.bodyLarge!,
    );
  } 

  Widget _buildCancelar(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () => onTapCancelar(context),
      height: 70,
      width: 160,
      text: "CANCELAR",
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
      buttonTextStyle: Theme.of(context).textTheme.bodyLarge!,
    );
  }

  void onTapCancelar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.welcomeScreen);
  }
}

  void onTapRegistrar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }
