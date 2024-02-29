import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../models/model_onboarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,

  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: model.bgColor,
      padding:  const EdgeInsets.all(tDefaultSize),
      child:    Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Image(image:  AssetImage(model.image) , height: size.height * 0.4,),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.headlineSmall,),
              Text(model.subTitle, style: Theme.of(context).textTheme.displaySmall, textAlign: TextAlign.center,),
            ],
          ),
          Text(model.counterText, style: Theme.of(context).textTheme.titleMedium,),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}