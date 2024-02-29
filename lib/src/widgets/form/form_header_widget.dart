import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.heightBetween,
    this.imageColor,
    this.imageHeight = 0.2,
    required this.image,
    required this.title,
    required this.subtitle,
    this.textAlign,
  });

  final String image, title ,subtitle;
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image.asset(
          image,
          height: size.height * imageHeight,
        ),
        SizedBox(height: heightBetween,),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          subtitle,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}