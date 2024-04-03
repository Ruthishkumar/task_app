import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/utils/app_colors.dart';

class AppStyles {
  static final AppStyles _singleton = AppStyles._internal();
  AppStyles._internal();
  static AppStyles get instance => _singleton;

  TextStyle? whiteTextStyle(
      {required double fontSize, required FontWeight fontWeight}) {
    return GoogleFonts.openSans(
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: AppColors.appBackgroundColor);
  }

  TextStyle? blackTextStyle(
      {required double fontSize, required FontWeight fontWeight}) {
    return GoogleFonts.openSans(
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: AppColors.appBlackTextColor);
  }

  TextStyle? blackTextStyleWithUnderLine(
      {required double fontSize, required FontWeight fontWeight}) {
    return GoogleFonts.openSans(
        decoration: TextDecoration.underline,
        decorationColor: AppColors.appBlackTextColor,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: AppColors.appBlackTextColor);
  }

  TextStyle? subHeaderTextStyle(
      {required double fontSize, required FontWeight fontWeight}) {
    return GoogleFonts.openSans(
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: AppColors.appSubHeaderTextColor);
  }

  TextStyle? primaryTextStyle(
      {required double fontSize, required FontWeight fontWeight}) {
    return GoogleFonts.openSans(
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: AppColors.appPrimaryColor);
  }

  TextStyle? metalValueTextStyle(
      {required double fontSize, required FontWeight fontWeight}) {
    return GoogleFonts.openSans(
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: AppColors.metalPercentageColor);
  }

  TextStyle? ornamentsTextStyle(
      {required double fontSize,
      required FontWeight fontWeight,
      required Color color}) {
    return GoogleFonts.openSans(
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color);
  }
}
