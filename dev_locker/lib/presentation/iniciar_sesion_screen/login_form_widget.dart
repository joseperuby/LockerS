import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lock/src/features/authentication/controllers/signup_controller.dart';
import 'package:lock/widgets/custom_elevated_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';

final controller = Get.put(SignUpController());
Form LoginForm(BuildContext context) {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  return Form(
      child: Theme(
    // Encapsulating inputs with a specific theme
    data: ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(color: Colors.white), // Label text color
        hintStyle:
            TextStyle(color: Colors.white.withOpacity(0.7)), // Hint text color
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
            controller: emailController,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_rounded),
                labelText: "Usuario",
                hintText: "Usuario"),
          ),
          const SizedBox(height: 30),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint_outlined),
                labelText: "Contraseña",
                hintText: "Contraseña",
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                  ),
                )),
          ),
          const SizedBox(height: 1),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    builder: (context) => Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "¡Haz una selección!",
                                style: GoogleFonts.roboto(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Selecciona una de las opciones siguientes para restablecer tu contraseña.",
                                style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.olvidarEmailScreen);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.shade300),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.mail_outline_outlined,
                                        size: 60,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "E-mail",
                                            style: GoogleFonts.roboto(
                                              fontSize: 25,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            "Reset via E-mail Verification.",
                                            style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(
                                      context, AppRoutes.olvidarCelularScreen);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.shade300),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.mobile_friendly_outlined,
                                        size: 60,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Celular",
                                            style: GoogleFonts.roboto(
                                              fontSize: 25,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            "Reset via Celular Verification.",
                                            style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ));
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10), // Text color
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
          SizedBox(width: double.infinity, child: _buildIniciarsesion(context, emailController, passwordController))
        ],
      ),
    ),
  ));
}

Widget _buildIniciarsesion(BuildContext context, TextEditingController email,
    TextEditingController password) {
  return CustomElevatedButton(
    onPressed: () {
      if (email.text.isNotEmpty && password.text.isNotEmpty) {
        controller.signIn(email.text.trim(), password.text.trim());
      } else {
        Get.snackbar(
          "Campos Incompletos",
          "Por favor, rellene todos los campos",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    },
    height: 70.v,
    width: 160.h,
    text: "INICIAR SESION",
    buttonStyle: CustomButtonStyles.outlineOnPrimary,
    buttonTextStyle: theme.textTheme
        .bodyLarge!, // Make sure this is properly themed as well if necessary
  );
}
