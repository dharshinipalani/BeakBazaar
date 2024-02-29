import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme{
  static TextTheme lightTextTheme = TextTheme(
      headlineSmall: GoogleFonts.azeretMono(
          color: Colors.black
      ),
      displaySmall: GoogleFonts.montserratAlternates(
        color: Colors.black,
        fontSize: 20,
      ),
  );
  static TextTheme darkTextTheme = TextTheme(
      headlineSmall: GoogleFonts.azeretMono(
          color: Colors.white
      ),
      displaySmall: GoogleFonts.montserratAlternates(
        color: Colors.white,
        fontSize: 20,
    ),
  );
}