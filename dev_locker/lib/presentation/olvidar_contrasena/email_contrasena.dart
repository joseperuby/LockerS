import 'package:flutter/material.dart';
import 'package:lock/routes/app_routes.dart';
import 'package:lock/src/constants/image_strings.dart';
import 'package:lock/widgets/custom_elevated_button.dart';
import '../../theme/custom_button_style.dart';


class OlvidarEmailScreen extends StatelessWidget {
  const OlvidarEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF474747),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80,),
              Image(image: AssetImage(tPassword), height: 300),
              const SizedBox(height: 30),
              Text(
                "Recuperar Contraseña",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 34,
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
              _buildEnviar(context),  // Eliminado el Row para mejor control de layout
            ],
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
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  labelText: "Email",
                  hintText: "Email",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildEnviar(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Hace que el botón se expanda al ancho completo
      child: CustomElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.otpScreen);
        },
        height: 70,
        text: "ENVIAR",
        buttonStyle: CustomButtonStyles.outlineOnPrimary,
        buttonTextStyle: Theme.of(context).textTheme.bodyLarge!,
      ),
    );
  }
}
