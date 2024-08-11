import 'package:flutter/material.dart';

class AppColorsTheme extends ThemeExtension<AppColorsTheme>
{
  // reference colors:
  static const _grey = Color(0xFF343440);
  static const _blue = Color(0xFF7A68F3);
  static const _black = Color(0xFF1F1D2B);
  static const _white = Color(0xFFFFFFFF);
  static const _lightGrey = Color(0xFFd3d3d3);

  // actual colors used throughout the app:
  final Color backgroundDefault;
  final Color backgroundInput;
  final Color snackbarValidation;
  final Color snackbarError;
  final Color textDefault;
  final Color imageBackground;

  // private constructor (use factories below instead):
  const AppColorsTheme._internal({
    required this.backgroundDefault,
    required this.backgroundInput,
    required this.snackbarValidation,
    required this.snackbarError,
    required this.textDefault,
    required this.imageBackground,
  });

  // factory for light mode:
  factory AppColorsTheme.light() {
    return const AppColorsTheme._internal(
        backgroundDefault: _black,
        backgroundInput: _black,
        snackbarValidation:_grey,
        snackbarError: _blue,
        textDefault: _white,
        imageBackground: _lightGrey,
    );
  }

  // factory for dark mode:
  factory AppColorsTheme.dark() {
    return const AppColorsTheme._internal(
        backgroundDefault: _grey,
        backgroundInput: _grey,
        snackbarValidation: _blue,
        snackbarError: _blue,
        textDefault: _grey,
        imageBackground: _lightGrey,
    );
  }

  @override
  ThemeExtension<AppColorsTheme> copyWith({bool? lightMode})
  {
    if (lightMode == null || lightMode == true) {
      return AppColorsTheme.light();
    }
    return AppColorsTheme.dark();
  }

  @override
  ThemeExtension<AppColorsTheme> lerp(
      covariant ThemeExtension<AppColorsTheme>? other,
      double t) => this;
}