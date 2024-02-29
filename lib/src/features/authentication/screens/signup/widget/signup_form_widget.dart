import 'package:bird_shop/src/features/authentication/controllers/signup_controller.dart';
import 'package:bird_shop/src/features/authentication/models/user_model.dart';
import 'package:bird_shop/src/features/authentication/screens/forgot_password/forgot_password_otp/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text.dart';

class SignupWidget extends StatelessWidget {
  const SignupWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());

    final formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 20),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_2_outlined),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label: Text(tPhoneNo),
                prefixIcon: Icon(Icons.phone),
                // prefixText: '+91 ',
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.fingerprint_outlined),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // SignUpController.instance.registerUser(
                        //     controller.email.text.trim(),
                        //     controller.password.text.trim());
                        // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());

                        final user = UserModel(
                            fullName: controller.fullName.text.trim(),
                            email: controller.email.text.trim(),
                            password: controller.password.text.trim(),
                            phoneno: controller.phoneNo.text.trim());
                        SignUpController.instance.createUser(user);
                      }
                    },
                    child: Text(tSignup.toUpperCase())))
          ],
        ),
      ),
    );
  }
}
