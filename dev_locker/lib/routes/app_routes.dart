import 'package:flutter/material.dart';
import 'package:lock/presentation/configuracion_locker_admin/configuracion_locker_admin_widget.dart';
import 'package:lock/presentation/home_page/home_page_widget.dart';
import 'package:lock/presentation/home_page_copy/home_page_copy_widget.dart';
import 'package:lock/presentation/info_locker_admin/info_locker_admin_widget.dart';
import 'package:lock/presentation/info_prestamos_admin/info_prestamos_admin_widget.dart';
import 'package:lock/presentation/iniciar_sesion_screen/iniciar_sesion_screen.dart';
import 'package:lock/presentation/menuprincipal_admin/menuprincipal_admin_widget.dart';
import 'package:lock/presentation/olvidar_contrasena/celular_contrasena.dart';
import 'package:lock/presentation/olvidar_contrasena/email_contrasena.dart';
import 'package:lock/presentation/otp_password/otp_screen.dart';
import 'package:lock/presentation/prestamos_admin_copy/prestamos_admin_copy_widget.dart';
import 'package:lock/presentation/signup_screen/signup_screen.dart';
import 'package:lock/src/features/authentication/screens/splash_screen/splash_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/cambio_de_contrase_a_screen/cambio_de_contrase_a_screen.dart';
import '../presentation/contrase_a_enviada_screen/contrase_a_enviada_screen.dart';
import '../presentation/inicio_de_sesi_n_screen/inicio_de_sesi_n_screen.dart';
import '../presentation/registro_completo_screen/registro_completo_screen.dart';
import '../presentation/registro_screen/registro_screen.dart'; 
import '../presentation/welcome_screen/welcome_screen.dart';

class AppRoutes {
  // MEMO Pantallas
  static const String menuPrincipalScreen = '/menuprincipal_admin';
  static const String infoPrestamosScreen = '/info_prestamos_admin';
  static const String configuracionLockerScreen = '/configuracion_locker_admin';
  static const String infoLockerScreen = '/info_locker_admin';
  static const String prestamosAdminCopy = '/prestamos_admin_copy';
  static const String homePageCopyScreen = '/home_page_copy';
  static const String homePageScreen = '/home_page';

  // PEPE Pantallas
  static const String otpScreen = '/otp_password';

  static const String olvidarCelularScreen = '/olvidar_contrasena';

  static const String olvidarEmailScreen = '/olvidar_contrasenaa';

  static const String welcomeScreen = '/welcome_screen';

  static const String splashScreen = '/splash_screen';

  static const String iniciarsesionScreen = '/iniciar_sesion_screen';

  static const String signUpScreen = '/signup_screen';
  
  static const String registroScreen = '/registro_screen';

  static const String registroCompletoScreen = '/registro_completo_screen';

  static const String contraseAEnviadaScreen = '/contrase_a_enviada_screen';

  static const String cambioDeContraseAScreen = '/cambio_de_contrase_a_screen';

  static const String inicioDeSesiNScreen = '/inicio_de_sesi_n_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    otpScreen:(context) => OTPScreen(),
    olvidarCelularScreen:(context) => OlvidarCelularScreen(),
    olvidarEmailScreen:(context) => OlvidarEmailScreen(),
    homePageScreen:(context) => HomePageWidget(),
    homePageCopyScreen:(context) => HomePageCopyWidget(),
    prestamosAdminCopy:(context) => PrestamosAdminCopyWidget(),
    infoLockerScreen:(context) => InfoLockerAdminWidget(),
    configuracionLockerScreen: (context) => ConfiguracionLockerAdminWidget(),
    infoPrestamosScreen: (context) => InfoPrestamosAdminWidget(),
    menuPrincipalScreen:(context) => MenuprincipalAdminWidget(),
    welcomeScreen: (context) => WelcomeScreen(),
    splashScreen: (context) => SplashScreen(),
    iniciarsesionScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    registroScreen: (context) => RegistroScreen(),
    registroCompletoScreen: (context) => RegistroCompletoScreen(),
    contraseAEnviadaScreen: (context) => ContraseAEnviadaScreen(),
    cambioDeContraseAScreen: (context) => CambioDeContraseAScreen(),
    inicioDeSesiNScreen: (context) => InicioDeSesiNScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreen()
  };
}
