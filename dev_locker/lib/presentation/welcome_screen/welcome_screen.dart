import 'package:flutter/material.dart';
import 'package:lock/src/constants/image_strings.dart';
import 'package:lock/widgets/custom_elevated_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
      lowerBound: 0.7,
      upperBound: 1.0,
    )..repeat(reverse: true);

    _scaleAnimation = CurvedAnimation(parent: _controller, curve: Curves.elasticInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              ScaleTransition(
                scale: _scaleAnimation,
                child: Image(image: AssetImage(tWelcome)),
              ),
              SizedBox(height: 60),
              Text(
                "¡Bienvenido a Lockersport!",
                style: TextStyle(
                  fontFamily: 'Roboto',  
                  fontSize: 28.5,
                  fontWeight: FontWeight.w800,
                  color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Accede y reserva tu equipo deportivo con facilidad y seguridad.",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18.5,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildIniciarSesion(context),
                  _buildRegistrar(context),
                ],
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIniciarSesion(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        onTapLogin(context);
      },
      height: 70.v,
      width: 160.h,
      text: "INICIAR SESION",
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }

  Widget _buildRegistrar(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        onTapRegister(context);
      },
      height: 70.v,
      width: 160.h,
      text: "REGISTRAR",
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }

  void onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroScreen);
  }

  void onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iniciarsesionScreen);
  }
}
