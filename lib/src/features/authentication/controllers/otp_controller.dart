import 'package:bird_shop/src/features/authentication/screens/birds/home_page.dart';
import 'package:bird_shop/src/features/authentication/screens/profile/profile_screen.dart';
import 'package:bird_shop/src/repository/auth_repository/authentication_repository.dart';
import 'package:get/get.dart';

class OtpController extends GetxController{
  static OtpController get instance => Get.find();


  void verifyOtp(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOtp(otp);

    isVerified ? Get.offAll(const ProfileScreen()) : Get.back();
  }
}