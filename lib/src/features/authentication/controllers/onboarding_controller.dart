import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../../constants/text.dart';
import '../models/model_onboarding.dart';
import '../screens/on_boarding/onboarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    const OnBoardingPageWidget(
        model: OnBoardingModel(
      image: tOnBoardingImage1,
      title: tOnBoardingTitle1,
      subTitle: tOnBoardingSubTitle1,
      counterText: tOnBoardingCounter1,
      bgColor: tOnBoardingPage1Color,
    )),
    const OnBoardingPageWidget(
        model: OnBoardingModel(
      image: tOnBoardingImage2,
      title: tOnBoardingTitle2,
      subTitle: tOnBoardingSubTitle2,
      counterText: tOnBoardingCounter2,
      bgColor: tOnBoardingPage2Color,
    )),
    const OnBoardingPageWidget(
        model: OnBoardingModel(
      image: tOnBoardingImage3,
      title: tOnBoardingTitle3,
      subTitle: tOnBoardingSubTitle3,
      counterText: tOnBoardingCounter3,
      bgColor: tOnBoardingPage3Color,
    )),
    const OnBoardingPageWidget(
        model: OnBoardingModel(
      image: tOnBoardingImage4,
      title: tOnBoardingTitle4,
      subTitle: tOnBoardingSubTitle4,
      counterText: tOnBoardingCounter4,
      bgColor: tOnBoardingPage4Color,
    ))
  ];

   onPageChangedCallBack(int activePageIndex) =>  currentPage.value = activePageIndex;
   skip() => controller.jumpToPage(page: 2);
   animateToNextSlide() {
     int nextPage = controller.currentPage + 1;
     controller.animateToPage(page: nextPage);
   }

}
