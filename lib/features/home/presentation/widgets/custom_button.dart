import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottom extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double fontSize;
  final double padding;
  final double radius;
  const CustomBottom({
    Key? key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.fontSize,
    required this.padding,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      padding: EdgeInsets.symmetric(vertical: padding),
      width: double.infinity,
      child: Text(text,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              fontSize: fontSize,
              fontWeight: FontWeight.w800,
              color: textColor)),
    );
  }
}
