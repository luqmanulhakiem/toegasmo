import 'package:flutter/material.dart';
import 'package:toegasmo_app/src/core/themes/app_font.dart';
import 'package:toegasmo_app/src/core/themes/app_palette.dart';

class AppTheme {
  // Light Mode
  static final lightThemeMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppPalette.background,
    colorScheme: const ColorScheme.light(
      onPrimary: AppPalette.primary,
      onPrimaryContainer: AppPalette.white,
    ),
    appBarTheme: const AppBarTheme(backgroundColor: AppPalette.primary),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppPalette.primary),
    textTheme: TextTheme(
        displayLarge: AppFont.montserratDisplayBig,
        displayMedium: AppFont.montserratDisplay,
        displaySmall: AppFont.montserratDisplaySmall,
        headlineLarge: AppFont.montserratHeadlineBig,
        headlineMedium: AppFont.montserratHeadline,
        headlineSmall: AppFont.montserratHeadlineSmall,
        titleLarge: AppFont.montserratTitleBig,
        titleMedium: AppFont.montserratTitle,
        titleSmall: AppFont.montserratTitleSmall,
        bodyLarge: AppFont.montserratBodyBig,
        bodyMedium: AppFont.montserratBody,
        bodySmall: AppFont.montserratBodySmall,
        labelLarge: AppFont.montserratLabelBig,
        labelMedium: AppFont.montserratLabel,
        labelSmall: AppFont.montserratLabelSmall),
  );

  // Dark Mode
  static final darkThemeMode = ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.light(
      onPrimary: AppPalette.primary,
      onPrimaryContainer: AppPalette.black,
    ),
    appBarTheme: const AppBarTheme(backgroundColor: AppPalette.primary),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppPalette.primary),
    textTheme: TextTheme(
      displayLarge:
          AppFont.montserratDisplayBig.copyWith(color: AppPalette.white),
      displayMedium:
          AppFont.montserratDisplay.copyWith(color: AppPalette.white),
      displaySmall:
          AppFont.montserratDisplaySmall.copyWith(color: AppPalette.white),
      headlineLarge:
          AppFont.montserratHeadlineBig.copyWith(color: AppPalette.white),
      headlineMedium:
          AppFont.montserratHeadline.copyWith(color: AppPalette.white),
      headlineSmall:
          AppFont.montserratHeadlineSmall.copyWith(color: AppPalette.white),
      titleLarge: AppFont.montserratTitleBig.copyWith(color: AppPalette.white),
      titleMedium: AppFont.montserratTitle.copyWith(color: AppPalette.white),
      titleSmall:
          AppFont.montserratTitleSmall.copyWith(color: AppPalette.white),
      bodyLarge: AppFont.montserratBodyBig.copyWith(color: AppPalette.white),
      bodyMedium: AppFont.montserratBody.copyWith(color: AppPalette.white),
      bodySmall: AppFont.montserratBodySmall.copyWith(color: AppPalette.white),
      labelLarge: AppFont.montserratLabelBig.copyWith(color: AppPalette.white),
      labelMedium: AppFont.montserratLabel.copyWith(color: AppPalette.white),
      labelSmall:
          AppFont.montserratLabelSmall.copyWith(color: AppPalette.white),
    ),
  );
}
