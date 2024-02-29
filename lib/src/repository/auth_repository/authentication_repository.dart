import 'package:bird_shop/src/features/authentication/screens/birds/home_page.dart';
import 'package:bird_shop/src/features/authentication/screens/mail_verification/mail_verification.dart';
import 'package:bird_shop/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:bird_shop/src/repository/auth_repository/exceptions/signup-email_password_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser ;
  var verificationId = ''.obs;
  
  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser) ;
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
    // super.onReady();
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const WelcomeScreen()) :
    user.emailVerified ? Get.offAll(() => const BirdHomePage()) : Get.offAll(() => const MailVerification());
  }
  Future<void> phoneAuthentication(String phone)async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (credential) async {
           await _auth.signInWithCredential(credential);
        },
        codeSent: (verificationId , resendToken){
             this.verificationId.value = verificationId;

        },
        codeAutoRetrievalTimeout: (verificationId){
          this.verificationId.value = verificationId;
        },
        verificationFailed: (e){
             if(e.code == 'invalid-phone-number'){
               Get.snackbar('Error', 'The provided phone number is not valid');
             }else{
               print('otp error ${e.code}');
               Get.snackbar('Error', 'Something went wrong');
             }
        },
    );
  }

  Future<bool> verifyOtp(String otp) async{
    var credentials = await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp));
    return credentials.user != null ? true : false;
  }

  Future<void> sendEmailVerification() async{
   try {
      await _auth.currentUser?.sendEmailVerification();
    }catch (_){
     throw "error";
   }
  }
  Future<void> createUserWithEmailAndPassword(String email,String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const BirdHomePage()) : Get.offAll(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print(ex.message);
      throw ex;
    } catch (_) {
      const  ex = SignUpWithEmailAndPasswordFailure();
      print(ex.message);
      throw ex;
    }
  }




   Future<void> loginWithEmailAndPassword(String email,String password) async {
     try {
       await _auth.signInWithEmailAndPassword(
           email: email, password: password);
     } on FirebaseAuthException catch (_) {

     } catch (_) {

     }
   }

     Future<void> logout() async => await _auth.signOut();
   }