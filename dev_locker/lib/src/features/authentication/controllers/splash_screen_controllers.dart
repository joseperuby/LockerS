import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:lock/presentation/main_screen/main_screen.dart';
import 'package:lock/presentation/welcome_screen/welcome_screen.dart';
import 'package:lock/presentation/home_page/home_page_widget.dart';  // Importa la pantalla de inicio

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  @override
  void onInit() {
    super.onInit();
    startAnimation();
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    checkAuthentication();
  }

  void checkAuthentication() {
    var user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      Get.offAll(() => MainScreen()); 
    } else {
      Get.offAll(() => WelcomeScreen());
    }
  }
}
