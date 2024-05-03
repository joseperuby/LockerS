import 'package:get/get.dart';
import 'package:lock/presentation/welcome_screen/welcome_screen.dart';

class SplashScreenController extends GetxController{
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
    Get.to(WelcomeScreen());
  }
}