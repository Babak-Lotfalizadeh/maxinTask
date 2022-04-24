import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maxin_task/config/screen_values.dart';

var primaryColor = const Color(0xff00b797);
var iconColor = const Color(0xffababab);

ThemeData appThemeData = ThemeData(
  primaryColor: primaryColor,
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return primaryColor;
      }
      return iconColor;
    }),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(ScreenValues.radiusSmall),
      ),
    ),
  ),
  scaffoldBackgroundColor: const Color(0xffeeeeee),
  textTheme: GoogleFonts.robotoTextTheme(),
  primaryTextTheme: GoogleFonts.robotoTextTheme(),
  iconTheme: IconThemeData(
    color: iconColor,
  ),
  colorScheme: ColorScheme(
    primary: primaryColor,
    secondary: const Color(0xffE51937),
    surface: const Color(0xff737272),
    onPrimary: const Color(0xffFCFCFC),
    background: const Color(0xffFCFCFC),
    onSurface: const Color(0xff000000),
    error: const Color(0xffE51937),
    onBackground: const Color(0xffE3EAEE),
    onSecondary: const Color(0xff000000),
    brightness: Brightness.light,
    onError: const Color(0xffE51937),
  ),
);
