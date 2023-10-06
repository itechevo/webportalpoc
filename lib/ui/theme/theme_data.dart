import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'color.dart';
import 'color_schemas.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: darkColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: darkButtonBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(vertical: 15),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: transparentColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: disableColor, width: 1)),
      padding: const EdgeInsets.symmetric(vertical: 15),
    ),
  ),
  brightness: Brightness.dark,
  useMaterial3: true,
  fontFamily: 'Roboto',
  cardColor: darkButtonBackgroundColor,
  secondaryHeaderColor: selectItemColor,
  disabledColor: disableColor,
  textTheme: TextTheme(
    displayLarge: headlineText(),
    titleMedium: subTiltleText(),
    labelMedium: buttonText(),
  ),
);

ThemeData lightTheme = ThemeData(
  bottomSheetTheme: const BottomSheetThemeData(surfaceTintColor: white),
  colorScheme: lightColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: lightButtonBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(vertical: 15),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: transparentColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: disableColor, width: 1)),
      padding: const EdgeInsets.symmetric(vertical: 15),
    ),
  ),
  brightness: Brightness.light,
  useMaterial3: true,
  fontFamily: 'Roboto',
  cardColor: lightButtonBackgroundColor,
  secondaryHeaderColor: selectItemColor,
  disabledColor: disableColor,
  textTheme: TextTheme(
    displayLarge: headlineText(),
    titleMedium: subTiltleText(),
    labelMedium: buttonText(),
  ),
);

TextStyle? headlineText() {
  return const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
  );
}

TextStyle? subTiltleText() {
  return const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w300,
  );
}

TextStyle? buttonText() {
  return const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}

// const primaryColor = Color(0XFF380038);
// const blackColor = Color(0XFF000000);
// const whiteColor = Color(0XFFFFFFFF);
// const secondryLightColor = Color(0XFF5B005B);
// const secondryDarkColor = Color(0XFFD90AD9);
// const darkGreyColor = Color(0XFF777777);
// const redColor = Color(0XFFF21F1F);
// const accentColor = Color(0XFFA50CA5);
// const lightGreyColor = Color(0XFFD7D7D7);
// const blueColor = Color(0XFF0C86DF);
