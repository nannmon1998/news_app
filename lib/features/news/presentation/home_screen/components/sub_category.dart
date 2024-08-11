import 'package:flutter/material.dart';
import 'package:news/config/theme/theme_data_extanded.dart';

class SubCategory extends StatelessWidget {
  const SubCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Explore",
              style: Theme.of(context).appTexts.labelBigDefault.copyWith(
                color: Theme.of(context).appColors.textDefault,
              ),
            ),
            Text(
              "See more",
              style:
              Theme.of(context).appTexts.labelDefaultDefault.copyWith(
                color: Theme.of(context).appColors.snackbarError,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 120.0,
          child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 6.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).appColors.imageBackground,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/images/football.png",
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Text(
                    "Football",
                    style:
                    Theme.of(context).appTexts.labelDefaultEmphasis,
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
