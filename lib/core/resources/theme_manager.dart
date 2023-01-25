import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of app
    // useMaterial3: true,
    primaryColor: ColorManager.primary,
    primarySwatch: buildMaterialColor(ColorManager.primary),
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),
    splashColor: ColorManager.profileBg.withOpacity(0.5),
    scaffoldBackgroundColor: ColorManager.white,
    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      iconTheme: IconThemeData(color: ColorManager.black),
      elevation: AppSize.s0,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: GoogleFonts.lato(
        color: ColorManager.black,
        fontSize: FontSize.s20,
        fontWeight: FontWeight.w700,
      ),
    ),
    // button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.primary),
        primary: ColorManager.primary,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    // Text theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(
        color: ColorManager.black,
        fontSize: FontSize.s36,
      ),
      headline2:
          getSemiBoldStyle(color: ColorManager.black, fontSize: FontSize.s20),
      headline3:
          getSemiBoldStyle(color: ColorManager.black, fontSize: FontSize.s18),
      headline4:
          getSemiBoldStyle(color: ColorManager.black, fontSize: FontSize.s17),
      headline5:
          getRegularStyle(color: ColorManager.black, fontSize: FontSize.s16),
      headline6:
          getRegularStyle(color: ColorManager.black, fontSize: FontSize.s14),
      subtitle1:
          getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      caption: getRegularStyle(color: ColorManager.black),
      bodyText1: getRegularStyle(color: ColorManager.grey),
    ),
    // input decoration theme (text form field)
    // inputDecorationTheme: InputDecorationTheme(
    //     isDense: true,
    //     // contentPadding: const EdgeInsets.symmetric(
    //     //     horizontal: AppPadding.p14, vertical: AppPadding.p28),
    //     hintStyle: getRegularStyle(color: ColorManager.grey1, fontSize: 16),
    //     labelStyle: getMediumStyle(color: ColorManager.darkGrey),
    //     errorStyle: getRegularStyle(color: ColorManager.error),
    //     constraints: const BoxConstraints(maxHeight: AppSize.s60),
    //     enabledBorder: OutlineInputBorder(
    //       borderSide:
    //           BorderSide(color: ColorManager.lightGrey, width: AppSize.s1_5),
    //       borderRadius: const BorderRadius.all(
    //         Radius.circular(AppSize.s10),
    //       ),
    //     ),
    //     focusedBorder: OutlineInputBorder(
    //       borderSide:
    //           BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
    //       borderRadius: const BorderRadius.all(
    //         Radius.circular(AppSize.s10),
    //       ),
    //     ),
    //     errorBorder: OutlineInputBorder(
    //       borderSide:
    //           BorderSide(color: ColorManager.error, width: AppSize.s1_5),
    //       borderRadius: const BorderRadius.all(
    //         Radius.circular(AppSize.s10),
    //       ),
    //     ),
    //     focusedErrorBorder: OutlineInputBorder(
    //       borderSide:
    //           BorderSide(color: ColorManager.error, width: AppSize.s1_5),
    //       borderRadius: const BorderRadius.all(
    //         Radius.circular(AppSize.s10),
    //       ),
    //     )),
  );
}
