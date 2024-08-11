import 'package:flutter/material.dart';
import 'package:news/config/theme/theme_data_extanded.dart';

class MainCategory extends StatelessWidget {
  const MainCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> category = ["All", "Sport", "Politic", "Education", "Business"];

    return SizedBox(
      height: 40.0,
      child: ListView.builder(
        itemCount: category.length,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 4),
            margin: const EdgeInsets.only(right: 4.0),
            decoration: BoxDecoration(
                color: Theme.of(context).appColors.snackbarValidation,
                borderRadius:
                const BorderRadius.all(Radius.circular(18.0))),
            child: Center(
                child: Text(
                  category[index],
                  style: Theme.of(context).appTexts.labelDefaultEmphasis,
                )),
          );
        },
      ),
    );
  }
}
