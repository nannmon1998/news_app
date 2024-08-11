import 'package:flutter/material.dart';
import 'package:news/config/theme/app_dimension_theme.dart';
import 'package:news/config/theme/app_text_theme.dart';
import 'package:news/config/theme/app_theme.dart';

extension ThemeDataExtended on ThemeData
{
  AppDimensionsTheme get appDimensions => extension<AppDimensionsTheme>()!;
  AppColorsTheme get appColors => extension<AppColorsTheme>()!;
  AppTextsTheme get appTexts => extension<AppTextsTheme>()!;
}