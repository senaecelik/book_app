import 'package:book_app/helper/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UITextStyle {
  static UITextStyle instance = UITextStyle._init();

  UITextStyle._init();

  final TextStyle onboardingText = GoogleFonts.inter(
      fontWeight: FontWeight.w300,
      fontSize: 51,
      color: ColorConstant.instance.black,
      letterSpacing: -1);

  final TextStyle textStyle20w500 = GoogleFonts.inter(
      fontSize: 20, letterSpacing: -0.39, fontWeight: FontWeight.w500);

  final TextStyle textStyle21w300 = GoogleFonts.inter(
      fontWeight: FontWeight.w300,
      fontSize: 21,
      color: ColorConstant.instance.black,
      letterSpacing: -0.61);

  final TextStyle textStyle21w700 = GoogleFonts.inter(
      fontWeight: FontWeight.w700, fontSize: 21, letterSpacing: -1);

  final TextStyle textStyle31w300 = GoogleFonts.inter(
      fontWeight: FontWeight.w300,
      fontSize: 31,
      color: ColorConstant.instance.black,
      letterSpacing: -0.61);

  final TextStyle textStyle31w700 = GoogleFonts.inter(
      fontWeight: FontWeight.w700, fontSize: 31, letterSpacing: -1);

  final TextStyle textStyle14w700 = GoogleFonts.inter(
      fontWeight: FontWeight.w700, fontSize: 14, letterSpacing: -1);
}
