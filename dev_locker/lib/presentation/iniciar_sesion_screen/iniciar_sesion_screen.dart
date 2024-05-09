import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';  // Ensure GoogleFonts is imported
import 'package:lock/presentation/iniciar_sesion_screen/login_form_widget.dart';
import 'package:lock/routes/app_routes.dart';
import 'package:lock/src/constants/image_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF474747),  // Fondo oscuro
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(tLogin),
                  height: 250,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Bienvenido de nuevo,",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 28.5,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Por favor, completa tus datos para continuar.",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16.5,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                LoginForm(context),
                Center(  // Use Center to align the TextButton horizontally
                  child: TextButton(
                    onPressed: () { onTapRegistrar(context); }, 
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue[200], padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: Text.rich(
                      TextSpan(
                        text: "¿No tienes cuenta? ",
                        style: GoogleFonts.roboto(
                          color: Colors.white, // Text color
                          fontSize: 16.5, // Font size
                        ),
                        children: [
                          TextSpan(
                            text: "Registrar",
                            style: GoogleFonts.roboto(
                              color: Colors.blue[200], // Text color
                              fontSize: 16.5, // Font size
                            )
                          )
                        ]
                      )
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void onTapRegistrar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
