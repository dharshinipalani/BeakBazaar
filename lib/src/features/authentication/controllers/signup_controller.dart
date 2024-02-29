import 'package:bird_shop/src/features/authentication/models/user_model.dart';
import 'package:bird_shop/src/repository/auth_repository/authentication_repository.dart';
import 'package:bird_shop/src/repository/user_repository/user_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/forgot_password/forgot_password_otp/otp_screen.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void registerUser(String email , String password){
      String? error = AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password) as String;
      if(error != null) {
        AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
      }
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneno);
    Get.to(() => const OtpScreen());
  }
  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}