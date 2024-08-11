import 'package:flutter/material.dart';
import 'package:news/features/news/presentation/home_screen/home_screen.dart';

import 'config/theme/app_dimension_theme.dart';
import 'config/theme/app_text_theme.dart';
import 'config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        extensions: [
          AppDimensionsTheme.main(),
          AppColorsTheme.light(),
          AppTextsTheme.main(),
        ],
      ),
      home: HomeScreen(),
    );
  }
}
