import 'package:bird_shop/src/features/authentication/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text.dart';
import '../../forgot_password/forgot_password_options/forgot_password_bottom_modal.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2_outlined),
                labelText: tEmail,
                hintText: tEmail,
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: tFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint_outlined),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: null, icon: Icon(Icons.remove_red_eye))),
          ),
          const SizedBox(
            height: tFormHeight - 20,
          ),
          Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                ForgotPasswordScreen.buildShowModalBottomSheet(context);
              },
              child: const Text(tForgetPassword),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => const ProfileScreen()));
              },
              child: Text(tLogin.toUpperCase()),
            ),
          )
        ],
      ),
    ));
  }



  
}

