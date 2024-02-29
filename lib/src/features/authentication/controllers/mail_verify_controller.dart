import 'dart:async';

import 'package:bird_shop/src/repository/auth_repository/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class MailVerificationController extends GetxController{

  late Timer _timer;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    sendVerificationEmail();
    setTimerForAutoRedirect();
  }



  Future<void> sendVerificationEmail() async{
    try{
      await AuthenticationRepository.instance.sendEmailVerification();
    }catch(e){
      print(e);
    }
  }

  void setTimerForAutoRedirect(){
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if(user!.emailVerified){
        timer.cancel();

      }
    });
  }

  void manuallyCheckEmailVerificationStatus(){}
}