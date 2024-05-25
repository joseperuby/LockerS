import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lock/firebase_options.dart';
import 'core/app_export.dart';
import 'package:lock/src/repository/usuario_repositorio/usuario_repositorio.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Ensure the repository is available before the app starts
  Get.put(UsuarioRepositorio());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeHelper().changeTheme('primary');
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          scaffoldMessengerKey: globalMessengerKey,
          theme: theme,
          title: 'lock',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.initialRoute,
          getPages: AppRoutes.routes,
        );
      },
    );
  }
}
