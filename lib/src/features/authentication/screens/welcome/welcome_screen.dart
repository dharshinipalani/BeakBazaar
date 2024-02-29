import 'package:bird_shop/src/constants/images.dart';
import 'package:bird_shop/src/constants/text.dart';
import 'package:bird_shop/src/features/authentication/screens/login/login_screen.dart';
import 'package:bird_shop/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:bird_shop/src/widgets/fade_in_animation/animation_designs.dart';
import 'package:bird_shop/src/widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:bird_shop/src/widgets/fade_in_animation/fade_in_animations_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TFadeInController());
    controller.startWelcomeAnimation();
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animateModel: TFadeInAnimationModel(
                bottomAfter: 0,
                bottomBefore: -100,
                leftBefore: 0,
                leftAfter: 0,
                rightAfter: 0,
                rightBefore: 0,
                topAfter: 0,
                topBefore: 0,
            ),
            child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                      image: const AssetImage(tWelcomeScreenImage),
                      height: size * 0.5,
                    ),
                    Column(
                      children: [
                        Text(
                          tWelcomeTitle,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          tWelcomeSubTitle,
                          style: Theme.of(context).textTheme.displaySmall,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: OutlinedButton(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          child: Text(tLogin.toUpperCase()),
                        )),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () => Get.to(() => const SignUpScreen()),
                                child: Text(tSignup.toUpperCase()))),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
