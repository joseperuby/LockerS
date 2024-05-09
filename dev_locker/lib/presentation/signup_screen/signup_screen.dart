import 'package:flutter/material.dart';
import 'package:lock/src/constants/image_strings.dart';
import 'package:lock/widgets/custom_elevated_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
      ),
    );
  }

  Widget buildFormFields(BuildContext context) {
    return Form(
      child: Theme(
        data: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.white), // Label text color
            hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.7)), // Hint text color
            prefixIconColor: Colors.white, // Prefix icon color
            suffixIconColor: Colors.white, // Suffix icon color
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          textTheme: TextTheme(
            subtitle1: TextStyle(color: Colors.white), // Affects input text
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_rounded),
                    labelText: "Nombre Completo",
                    hintText: "Nombre Completo"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "E-mail",
                    hintText: "E-mail"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.numbers),
                    labelText: "Expediente",
                    hintText: "Expediente"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: "Teléfono",
                    hintText: "Teléfono"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    labelText: "Contraseña",
                    hintText: "Contraseña"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    labelText: "Repetir Contraseña",
                    hintText: "Repetir Contraseña"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRegistrar(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        // Add your registration logic here
      },
      height: 70, // Adjust if using .v extension
      width: 160, // Adjust if using .h extension
      text: "REGISTRAR",
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }

  Widget _buildCancelar(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        onTapCancelar(context);
      },
      height: 70,
      width: 160,
      text: "CANCELAR",
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }

  void onTapCancelar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuPrincipalScreen);
  }
}
