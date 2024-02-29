import 'package:bird_shop/src/constants/sizes.dart';
import 'package:bird_shop/src/constants/text.dart';
import 'package:bird_shop/src/features/authentication/controllers/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget{
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var otp;
    final OtpController otpController = Get.put(OtpController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
           padding: const EdgeInsets.all(tDefaultSize),
           child:  Column(
             // crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children:  [
               Text(tOtpTitle , style: GoogleFonts.montserrat(
                 fontSize: 80.0,
                 fontWeight: FontWeight.bold,
               ),),
               Text(tOtpSubTitle.toUpperCase() , style: Theme.of(context).textTheme.headlineSmall,),
               const SizedBox(height: 40.0,),
               const Text('$tOtpMessage xxx@gmail.com' , textAlign: TextAlign.center,),
               const SizedBox(height: 20.0,),
               OtpTextField(
                 numberOfFields: 6,
                 fillColor: Colors.black.withOpacity(0.1),
                 filled: true,
                 onSubmit: (code){
                  otp = code;
                  OtpController.instance.verifyOtp(otp);
                 },
               ),
               const SizedBox(height: 20.0,),
               SizedBox(
                 width: double.infinity,
                 child: ElevatedButton(
                   onPressed: (){},
                   child: const Text(tNext),
                 ),
               )
             ],
           ),
        ),
      ),
    );
  }
}