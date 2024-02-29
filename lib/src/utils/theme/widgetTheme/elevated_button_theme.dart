import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TElevatedButtonTheme{
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        foregroundColor: tWhiteColor,
        backgroundColor: tPrimaryColor,
        side: const BorderSide(color: tPrimaryColor),
        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)
    )
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        foregroundColor: tSecondaryColor,
        backgroundColor: tWhiteColor,
        side: const BorderSide(color: tPrimaryColor),
        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)
    )
  );
}
