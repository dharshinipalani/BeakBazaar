import 'package:bird_shop/src/constants/colors.dart';
import 'package:bird_shop/src/constants/images.dart';
import 'package:bird_shop/src/constants/sizes.dart';
import 'package:bird_shop/src/constants/text.dart';
import 'package:bird_shop/src/widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:bird_shop/src/widgets/fade_in_animation/fade_in_animations_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/fade_in_animation/animation_designs.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TFadeInController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
              durationInMs: 1600,
              animateModel: TFadeInAnimationModel(
                topAfter: 0,
                topBefore: -30,
                leftBefore: -30,
                leftAfter: 0,
              ),
              child: const Image(
                width: 140,
                height: 180,
                image: AssetImage(
                  tSplashTopIcon,
                ),
              ),
          ),
          TFadeInAnimation(
              durationInMs: 2000,
              animateModel: TFadeInAnimationModel(
                topBefore: 180,
                topAfter: 180,
                leftAfter: tDefaultSize,
                leftBefore: -80,
              ), child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tAppName,
                style: Theme
                    .of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(
                  fontSize: 20,
                  fontFamily: 'MontserratAlternates',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                tAppTagLine,
                style: Theme
                    .of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          )
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animateModel: TFadeInAnimationModel(
                bottomBefore: 0, bottomAfter: 100),
            child: const Image(
              width: 450,
              height: 400,
              image: AssetImage(tSplashImage),
            ),
          ),
          TFadeInAnimation(durationInMs: 2400,
              animateModel: TFadeInAnimationModel(bottomAfter: 60,
                  bottomBefore: 0,
                  rightBefore: tDefaultSize,
                  rightAfter: tDefaultSize),
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ))
        ],
      ),
    );
  }

// Future startAnimation() async{
//   await Future.delayed(const Duration(milliseconds: 5000));
//   setState(() {
//     animate = true;
//   });
//   await Future.delayed(const Duration(milliseconds: 5000));
//   Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => WelcomeScreen()));
// }
}
