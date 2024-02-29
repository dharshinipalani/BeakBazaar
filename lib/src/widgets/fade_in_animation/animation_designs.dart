import 'package:bird_shop/src/widgets/fade_in_animation/fade_in_animations_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/images.dart';
import 'fade_in_animation_controller.dart';

class TFadeInAnimation extends StatelessWidget {
   TFadeInAnimation({
        super.key,
        required this.durationInMs,
        required this.animateModel,
        required this.child,
  });

  final controller = Get.put(TFadeInController());
  final int durationInMs;

  final TFadeInAnimationModel? animateModel;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? animateModel!.topAfter : animateModel!.topBefore,
        left: controller.animate.value ? animateModel!.leftAfter : animateModel!.leftBefore,
        bottom: controller.animate.value ? animateModel!.bottomAfter : animateModel!.bottomBefore,
        right: controller.animate.value ? animateModel!.rightAfter : animateModel!.rightBefore,
        child: AnimatedOpacity(
          opacity: controller.animate.value ? 1 : 0,
          duration: Duration(milliseconds: durationInMs),
          child: child,
        ),
      ),
    );
  }
}
