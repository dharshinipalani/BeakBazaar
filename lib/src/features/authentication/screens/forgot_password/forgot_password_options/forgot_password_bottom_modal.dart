import 'package:bird_shop/src/features/authentication/screens/forgot_password/forgot_password_email/forgot_pass_email.dart';
import 'package:bird_shop/src/features/authentication/screens/forgot_password/forgot_password_phone/forgot_pass_phone.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text.dart';
import 'forgot_password_btn_widget.dart';

class ForgotPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        builder: (ctx) => Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tForgetPasswordTitle,
                style:
                Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                tForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: tDefaultSize,
              ),
              ForgotPassButtonWidget(
                iconData: Icons.email_outlined,
                title: tEmail,
                subtitle: tResetViaEMail,
                onTap: (){
                  Navigator.pop(context);
                  Get.to( () => const ForgotPasswordEmail());
                },
              ),
              const SizedBox(height: tFormHeight - 10,),
              ForgotPassButtonWidget(
                iconData: Icons.phone,
                title: tPhoneNo,
                subtitle: tResetViaPhone,
                onTap: () {
                  Navigator.pop(context);
                  Get.to(() => const ForgotPasswordPhone());
                },
              ),
            ],
          ),
        ));
  }
}