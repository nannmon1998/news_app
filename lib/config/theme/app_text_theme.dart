import 'package:flutter/material.dart';

class AppTextsTheme extends ThemeExtension<AppTextsTheme>
{
  static const _baseFamily = "Base";

  final TextStyle labelBigEmphasis;
  final TextStyle labelBigDefault;
  final TextStyle labelDefaultEmphasis;
  final TextStyle labelDefaultDefault;

  const AppTextsTheme._internal({
    required this.labelBigEmphasis,
    required this.labelBigDefault,
    required this.labelDefaultEmphasis,
    required this.labelDefaultDefault,
  });

  factory AppTextsTheme.main() => const AppTextsTheme._internal(
    labelBigEmphasis: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w800,
      fontSize: 28,
      height: 1.4,
    ),
    labelBigDefault: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w600,
      fontSize: 22,
      height: 1.4,
    ),
    labelDefaultEmphasis: TextStyle(
      fontFamily: _baseFamily,
      color: Colors.white70,
      fontSize: 16,
      height: 1.4,
    ),
    labelDefaultDefault: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.4,
    ),
  );

  @override
  ThemeExtension<AppTextsTheme> copyWith()
  {
    return AppTextsTheme._internal(
      labelBigEmphasis: labelBigEmphasis,
      labelBigDefault: labelBigDefault,
      labelDefaultEmphasis: labelDefaultEmphasis,
      labelDefaultDefault: labelDefaultDefault,
    );
  }

  @override
  ThemeExtension<AppTextsTheme> lerp(
      covariant ThemeExtension<AppTextsTheme>? other,
      double t) => this;
}