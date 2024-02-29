import 'package:bird_shop/src/constants/images.dart';
import 'package:bird_shop/src/constants/sizes.dart';
import 'package:bird_shop/src/constants/text.dart';
import 'package:bird_shop/src/features/authentication/screens/signup/widget/signup_form_widget.dart';
import 'package:bird_shop/src/widgets/form/form_header_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FormHeaderWidget(
                    image: tWelcomeScreenImage,
                    title: tSignUpTitle,
                    subtitle: tSignUpSubTitle),
                const SignupWidget(),
                Column(
                  children: [
                    const Text('OR'),
                    const SizedBox(
                      height: tFormHeight - 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: Image.asset(
                          tGoogleLogoImage,
                          width: 20.0,
                        ),
                        onPressed: () {},
                        label: Text(tSignInWithGoogle.toUpperCase()),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: tAlreadyHaveAnAccount,
                              style: Theme.of(context).textTheme.bodyMedium),
                          TextSpan(
                            text: tLogin.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.blue,
                            ),
                          )
                        ]),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
