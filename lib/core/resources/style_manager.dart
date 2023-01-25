import 'package:flutter/cupertino.dart';
import 'package:foodbusters/core/resources/font_manager.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, Color color, FontWeight fontWeight) {
  return GoogleFonts.lato(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}

// regular
TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    color,
    FontWeightManager.regular,
  );
}

// light
TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    color,
    FontWeightManager.light,
  );
}

// Bold
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    color,
    FontWeightManager.bold,
  );
}

// Extra Bold
TextStyle getExtraBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    color,
    FontWeightManager.extraBold,
  );
}

// SemiBold
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    color,
    FontWeightManager.semiBold,
  );
}

// medium
TextStyle getMediumStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    FontWeight? fontWeight}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    color,
    fontWeight ?? FontWeightManager.medium,
  );
}
