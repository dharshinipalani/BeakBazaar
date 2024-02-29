import 'package:bird_shop/src/utils/theme/widgetTheme/elevated_button_theme.dart';
import 'package:bird_shop/src/utils/theme/widgetTheme/outlined_button_theme.dart';
import 'package:bird_shop/src/utils/theme/widgetTheme/text_form_field_theme.dart';
import 'package:bird_shop/src/utils/theme/widgetTheme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{

  AppTheme._();
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.lightGreen,
      textTheme: AppTextTheme.lightTextTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );


}