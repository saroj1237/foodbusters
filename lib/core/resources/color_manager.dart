import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex('#FED41E');
  static Color primaryLight = HexColor.fromHex('#FFF8DA');
  static Color darkGrey = HexColor.fromHex('#525252');
  static Color grey = HexColor.fromHex('#737477');
  static Color lightGrey = HexColor.fromHex('#EEEEEE');
  static Color lightGrey1 = HexColor.fromHex('#F6F6F6');
  static Color primaryOpacity70 = HexColor.fromHex('#C70000');
  static Color transparent = Colors.transparent;
  static Color skyBlue = HexColor.fromHex('#8EC7EC');
  static Color skyBlue05 = HexColor.fromHex('#EFF9FF');

  static Color profileBg = HexColor.fromHex('#F9F9F9');
  static Color skyBluelight = HexColor.fromHex('#DBEDFA');
  static Color featuredSection = HexColor.fromHex('#EFF9FF');

  static Color darkPrimary = HexColor.fromHex('#d17d11');
  static Color grey1 = HexColor.fromHex('#707070');
  static Color grey2 = HexColor.fromHex('##C3C3C3');
  static Color grey3 = HexColor.fromHex('##BCBEC0');
  static Color grey4 = HexColor.fromHex('#F0F0F0');
  static Color searchFieldColor = HexColor.fromHex('#F7F7F7');

  static Color white = HexColor.fromHex('#FFFFFF');
  static Color black = HexColor.fromHex('#000000');
  static Color blackOpacity70 = HexColor.fromHex('#4C4C4C');
  static Color error = HexColor.fromHex('#e61f34');
  static Color errorOpacity50 = Colors.red.withOpacity(0.5);
  static Color success = HexColor.fromHex('#01A101');

  static Color khaltiColor = HexColor.fromHex("#5D2E8E");

  // Text color
  static Color textDark = HexColor.fromHex('#363434');
  static Color textGrey = HexColor.fromHex('#A3A0A1');
  static Color hintColor = HexColor.fromHex('#999999');
  static Color categorySliderTextColor = HexColor.fromHex('#656363');
  static Color discountPercentText = HexColor.fromHex('#72C6EF');

  //deals and offer section
  static Color dealsLightBg = HexColor.fromHex('#FFFBEB');

  // Bhat-Bhateni
  static Color bbPrimary = HexColor.fromHex('#F7941D');
  static Color bbCategoryBg = HexColor.fromHex('#F4F4F5');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
