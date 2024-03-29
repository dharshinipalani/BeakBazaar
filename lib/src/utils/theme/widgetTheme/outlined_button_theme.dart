import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TOutlinedButtonTheme{
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style:  OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(),
          foregroundColor: tPrimaryColor,
          side: const BorderSide(color: tPrimaryColor),
          padding: const EdgeInsets.symmetric(vertical: tButtonHeight)
      )
  );
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style:  OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(),
          foregroundColor: tWhiteColor,
          side: const BorderSide(color: tWhiteColor),
          padding: const EdgeInsets.symmetric(vertical: tButtonHeight)
      )
  );
}
