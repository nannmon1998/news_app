import 'package:flutter/material.dart';
import 'package:news/config/theme/theme_data_extanded.dart';
class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Discover",
          style: Theme.of(context).appTexts.labelBigEmphasis.copyWith(
            color: Theme.of(context).appColors.textDefault,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Theme.of(context).appColors.imageBackground,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            "assets/images/football.png",
            width: 20,
            height: 20,
          ),
        ),
      ],
    );
  }
}
