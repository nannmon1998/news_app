import 'package:flutter/material.dart';

class AppDimensionsTheme extends ThemeExtension<AppDimensionsTheme>
{
  final double radiusHelpIndication;
  final double sizedBoxHelpIndication;
  final EdgeInsets paddingHelpIndication;

  const AppDimensionsTheme._internal({
    required this.radiusHelpIndication,
    required this.paddingHelpIndication,
    required this.sizedBoxHelpIndication
  });

  factory AppDimensionsTheme.main() => const AppDimensionsTheme._internal(
    radiusHelpIndication: 8,
    sizedBoxHelpIndication: 18,
    paddingHelpIndication: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );

  @override
  ThemeExtension<AppDimensionsTheme> copyWith()
  {
    return AppDimensionsTheme._internal(
      radiusHelpIndication: radiusHelpIndication,
      sizedBoxHelpIndication: sizedBoxHelpIndication,
      paddingHelpIndication: paddingHelpIndication,
    );
  }

  @override
  ThemeExtension<AppDimensionsTheme> lerp(
      covariant ThemeExtension<AppDimensionsTheme>? other,
      double t) => this;
}