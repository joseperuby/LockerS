import 'package:flutter/material.dart';
import 'package:lock/presentation/iniciar_sesion_screen/iniciar_sesion_screen.dart';
import 'package:lock/src/features/authentication/screens/splash_screen/splash_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/cambio_de_contrase_a_screen/cambio_de_contrase_a_screen.dart';
import '../presentation/contrase_a_enviada_screen/contrase_a_enviada_screen.dart';
import '../presentation/inicio_de_sesi_n_screen/inicio_de_sesi_n_screen.dart';
import '../presentation/registro_completo_screen/registro_completo_screen.dart';
import '../presentation/registro_screen/registro_screen.dart'; 
import '../presentation/welcome_screen/welcome_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String splashScreen = '/splash_screen';

  static const String iniciarsesionScreen = '/iniciar_sesion_screen';
  
  static const String registroScreen = '/registro_screen';

  static const String registroCompletoScreen = '/registro_completo_screen';

  static const String contraseAEnviadaScreen = '/contrase_a_enviada_screen';

  static const String cambioDeContraseAScreen = '/cambio_de_contrase_a_screen';

  static const String inicioDeSesiNScreen = '/inicio_de_sesi_n_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    splashScreen: (context) => SplashScreen(),
    iniciarsesionScreen: (context) => LoginScreen(),
    registroScreen: (context) => RegistroScreen(),
    registroCompletoScreen: (context) => RegistroCompletoScreen(),
    contraseAEnviadaScreen: (context) => ContraseAEnviadaScreen(),
    cambioDeContraseAScreen: (context) => CambioDeContraseAScreen(),
    inicioDeSesiNScreen: (context) => InicioDeSesiNScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreen()
  };
}
