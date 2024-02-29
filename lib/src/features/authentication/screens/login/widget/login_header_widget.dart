import 'package:flutter/material.dart';

import '../../../../../constants/images.dart';
import '../../../../../constants/text.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          tWelcomeScreenImage,
          height: size.height * 0.2,
        ),
        Text(
          tLoginTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          tLoginSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}