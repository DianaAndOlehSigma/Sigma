import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sigma/resources/colors.dart';

class TextStyles{

  TextStyle style_1 = GoogleFonts.openSans(
    color: ColorsData().black,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    decoration: TextDecoration.none
  );

  TextStyle style_2 = GoogleFonts.openSans(
    color: ColorsData().white,
    fontWeight: FontWeight.bold,
    fontSize: 36,
      decoration: TextDecoration.none
  );

  TextStyle style_3 = GoogleFonts.openSans(
      color: ColorsData().white,
      fontWeight: FontWeight.normal,
      fontSize: 14,
      decoration: TextDecoration.none
  );

  TextStyle style_4 = GoogleFonts.openSans(
      color: ColorsData().grey1,
      fontWeight: FontWeight.normal,
      fontSize: 12,
      decoration: TextDecoration.none
  );

  TextStyle style_5 = GoogleFonts.openSans(
      color: ColorsData().blue2,
      fontWeight: FontWeight.normal,
      fontSize: 12,
      decoration: TextDecoration.underline
  );

}