import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text customText(
  String text,
  Color color,
  double fontSize,
  FontWeight fontWeight, {
  double? lineHeight,
  TextOverflow? textOverflow,
  int? maxLines,
  TextAlign? textAlign,
  double? textScaleFactor,
}) {
  return Text(
    text,
    textScaleFactor: textScaleFactor,
    style: GoogleFonts.lato(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: lineHeight,
    ),
    textAlign: textAlign,
    overflow: textOverflow ?? TextOverflow.ellipsis,
    maxLines: maxLines,
  );
}

Text customTextOverflow(String text, Color color, double fontSize,
    FontWeight fontWeight, TextOverflow? textOverflow) {
  return Text(text,
      overflow: textOverflow,
      maxLines: 1,
      style: GoogleFonts.lato(
          fontSize: fontSize, fontWeight: fontWeight, color: color));
}

Text customTextCenter(
    String text, Color color, double fontSize, FontWeight fontWeight) {
  return Text(text,
      textAlign: TextAlign.center,
      style: GoogleFonts.lato(
          fontSize: fontSize, fontWeight: fontWeight, color: color));
}
