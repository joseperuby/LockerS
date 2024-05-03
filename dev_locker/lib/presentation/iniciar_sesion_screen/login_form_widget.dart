import 'package:flutter/material.dart';
import 'package:lock/widgets/custom_elevated_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';

Form LoginForm(BuildContext context) {
  return Form(
      child: Theme(  // Encapsulating inputs with a specific theme
        data: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.white), // Label text color
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)), // Hint text color
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
                    labelText: "Usuario",
                    hintText: "Usuario"
                ),
              ),
              const SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint_outlined),
                    labelText: "Contraseña",
                    hintText: "Contraseña",
                    suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.remove_red_eye, color: Colors.white,),
                    )
                ),
              ),
              const SizedBox(height: 1),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Text color
                  ),
                  child: Text(
                    "¿Olvidaste tu contraseña?",
                    style: TextStyle(
                      color: Colors.blue[200],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(width: double.infinity, child: _buildIniciarsesion(context))
            ],
          ),
        ),
      ));
}

Widget _buildIniciarsesion(BuildContext context) {
  return CustomElevatedButton(
    onPressed: () {
      onTapLogin(context);
    },
    height: 70.v,
    width: 160.h,
    text: "INICIAR SESION",
    buttonStyle: CustomButtonStyles.outlineOnPrimary,
    buttonTextStyle: theme.textTheme.bodyLarge!,  // Make sure this is properly themed as well if necessary
  );
}

void onTapLogin(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.welcomeScreen);
}
