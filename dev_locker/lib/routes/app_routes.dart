import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/cambio_de_contrase_a_screen/cambio_de_contrase_a_screen.dart';
import '../presentation/contrase_a_enviada_screen/contrase_a_enviada_screen.dart';
import '../presentation/inicio_de_sesi_n_screen/inicio_de_sesi_n_screen.dart';
import '../presentation/registro_completo_screen/registro_completo_screen.dart';
import '../presentation/registro_screen/registro_screen.dart'; // ignore_for_file: must_be_immutable

class AppRoutes {
  static const String registroScreen = '/registro_screen';

  static const String registroCompletoScreen = '/registro_completo_screen';

  static const String contraseAEnviadaScreen = '/contrase_a_enviada_screen';

  static const String cambioDeContraseAScreen = '/cambio_de_contrase_a_screen';

  static const String inicioDeSesiNScreen = '/inicio_de_sesi_n_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    registroScreen: (context) => RegistroScreen(),
    registroCompletoScreen: (context) => RegistroCompletoScreen(),
    contraseAEnviadaScreen: (context) => ContraseAEnviadaScreen(),
    cambioDeContraseAScreen: (context) => CambioDeContraseAScreen(),
    inicioDeSesiNScreen: (context) => InicioDeSesiNScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => InicioDeSesiNScreen()
  };
}
