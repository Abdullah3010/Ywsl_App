import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

final myTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      // fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 30.0,
      color: AppColors.textColor,
    ),
    headlineMedium: TextStyle(
      // fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 24.0,
      color: AppColors.textColor,
    ),
    headlineSmall: TextStyle(
      // fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
      color: AppColors.textColor,
    ),
    bodyLarge: TextStyle(
      // fontFamily: fontFamily,
      fontSize: 18.0,
      color: AppColors.textColor,
    ),
    bodyMedium: TextStyle(
      // fontFamily: fontFamily,
      fontSize: 16.0,
      color: AppColors.textColor,
    ),
    bodySmall: TextStyle(
      // fontFamily: fontFamily,
      fontSize: 14.0,
      color: AppColors.textColor,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.primaryColor,
    foregroundColor: AppColors.textColor,
    titleTextStyle: TextStyle(
      // fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
      color: AppColors.textColor,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: AppColors.primaryColor,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(
        // fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  ),
  inputDecorationTheme: _getInputDecoration(),
);

InputDecorationTheme _getInputDecoration() {
  return InputDecorationTheme(
    floatingLabelStyle: const TextStyle(
      color: AppColors.primaryColor,
      fontSize: 18,
    ),
    labelStyle: TextStyle(
      color: Colors.black.withOpacity(0.5),
      fontSize: 14,
    ),
    errorStyle: const TextStyle(
      color: AppColors.errorColor,
    ),
    iconColor: AppColors.primaryColor,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Colors.black.withOpacity(0.3),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.errorColor,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.errorColor,
        width: 2,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
