import 'package:bird_shop/src/constants/colors.dart';

import 'package:bird_shop/src/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingScreen extends StatelessWidget {
   const OnBoardingScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            liquidController: obcontroller.controller,
            onPageChangeCallback: obcontroller.onPageChangedCallBack,
          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                onPressed: () => obcontroller.animateToNextSlide() ,
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(12),
                  foregroundColor: Colors.white,
                ),
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: const BoxDecoration(
                      color: tDarkColor, shape: BoxShape.circle),
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              )),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () => obcontroller.skip(),
                child: const Text(
                  'Skip',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MontserratAlternates'
                  ),
                ),
              )),
          Obx(
              () => Positioned(
              bottom: 15,
                child: AnimatedSmoothIndicator(
              activeIndex: obcontroller.currentPage.value,
              count: 4,
                  effect: const WormEffect(
                    activeDotColor: Color(0xff272727),
                    dotHeight: 5.0,
                  ),
            )),
          )
        ],
      ),
    );
  }

}
