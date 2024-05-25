import 'package:get/get.dart';
import 'package:lock/presentation/configuracion_locker_admin/configuracion_locker_admin_widget.dart';
import 'package:lock/presentation/home_page/home_page_widget.dart';
import 'package:lock/presentation/home_page_copy/home_page_copy_widget.dart';
import 'package:lock/presentation/info_locker_admin/info_locker_admin_widget.dart';
import 'package:lock/presentation/info_prestamos_admin/info_prestamos_admin_widget.dart';
import 'package:lock/presentation/iniciar_sesion_screen/iniciar_sesion_screen.dart';
import 'package:lock/presentation/main_screen/main_screen.dart';
import 'package:lock/presentation/main_screen_admin/main_screen_admin.dart';
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
  static const String mainScreenAdmin = '/main_screen_admin';
  static const String menuPrincipalScreen = '/menuprincipal_admin';
  static const String infoPrestamosScreen = '/info_prestamos_admin';
  static const String configuracionLockerScreen = '/configuracion_locker_admin';
  static const String infoLockerScreen = '/info_locker_admin';
  static const String prestamosAdminCopy = '/prestamos_admin_copy';
  static const String homePageCopyScreen = '/home_page_copy';
  static const String homePageScreen = '/home_page';
  static const String mainScreen = '/main_screen';
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

  static List<GetPage> routes = [
    GetPage(name: mainScreenAdmin, page: () => MainScreenAdmin()),
    GetPage(name: mainScreen, page: () => MainScreen()),
    GetPage(name: otpScreen, page: () => OTPScreen()),
    GetPage(name: olvidarCelularScreen, page: () => OlvidarCelularScreen()),
    GetPage(name: olvidarEmailScreen, page: () => OlvidarEmailScreen()),
    GetPage(name: homePageScreen, page: () => HomePageWidget()),
    GetPage(name: homePageCopyScreen, page: () => HomePageCopyWidget()),
    GetPage(name: prestamosAdminCopy, page: () => PrestamosAdminCopyWidget()),
    GetPage(name: infoLockerScreen, page: () => InfoLockerAdminWidget()),
    GetPage(name: configuracionLockerScreen, page: () => ConfiguracionLockerAdminWidget()),
    GetPage(name: infoPrestamosScreen, page: () => InfoPrestamosAdminWidget()),
    GetPage(name: menuPrincipalScreen, page: () => MenuprincipalAdminWidget()),
    GetPage(name: welcomeScreen, page: () => WelcomeScreen()),
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: iniciarsesionScreen, page: () => LoginScreen()),
    GetPage(name: signUpScreen, page: () => SignUpScreen()),
    GetPage(name: registroScreen, page: () => RegistroScreen()),
    GetPage(name: registroCompletoScreen, page: () => RegistroCompletoScreen()),
    GetPage(name: contraseAEnviadaScreen, page: () => ContraseAEnviadaScreen()),
    GetPage(name: cambioDeContraseAScreen, page: () => CambioDeContraseAScreen()),
    GetPage(name: inicioDeSesiNScreen, page: () => InicioDeSesiNScreen()),
    GetPage(name: appNavigationScreen, page: () => AppNavigationScreen()),
    GetPage(name: initialRoute, page: () => SplashScreen()),
  ];
}
