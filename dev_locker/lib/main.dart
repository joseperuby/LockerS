  import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
  import 'package:flutter/services.dart';
  import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lock/firebase_options.dart';
  import 'core/app_export.dart';

  var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
  void main() {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    ThemeHelper().changeTheme('primary');
    runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Sizer(
        builder: (context, orientation, deviceType) {
          return GetMaterialApp(
            theme: theme,
            title: 'lock',
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.initialRoute,
            routes: AppRoutes.routes,
          );
        },
      );
    }
  }
