import 'package:bird_shop/src/features/authentication/screens/on_boarding/onboarding_screen.dart';
import 'package:bird_shop/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class TFadeInController extends GetxController{

  static TFadeInController get find => Get.find();
  RxBool animate  = false.obs;

  Future startSplashAnimation() async{
    await Future.delayed(const Duration(milliseconds: 800));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3500));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 3000));
    Get.offAll(const WelcomeScreen());
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => WelcomeScreen()));
  }
  Future startWelcomeAnimation() async{
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }
}