import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/text.dart';

class TTextFormFieldTheme{
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =  InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      prefixIconColor: tPrimaryColor,
      floatingLabelStyle: const TextStyle(color: tPrimaryColor),
      focusedBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            width: 2.0 , color: tPrimaryColor,
          )
      )
  );
  static InputDecorationTheme darkInputDecorationTheme =  InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      prefixIconColor: tWhiteColor,
      labelStyle: const TextStyle(color: tWhiteColor),
      focusedBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            width: 2.0 , color: tWhiteColor,
          )
      )
  );


}