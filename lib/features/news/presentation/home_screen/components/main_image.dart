import 'package:flutter/material.dart';
import 'package:news/config/theme/theme_data_extanded.dart';

class MainImage extends StatelessWidget {
  const MainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).appColors.imageBackground,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/football.png",
                fit: BoxFit.contain,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sweet Melody',
                      style: Theme.of(context)
                          .appTexts
                          .labelBigEmphasis
                          .copyWith(
                        color: Theme.of(context)
                            .appColors
                            .textDefault,
                      ),
                    ),
                    SizedBox(
                      height: Theme.of(context)
                          .appDimensions
                          .sizedBoxHelpIndication,
                    ),
                    Text(
                      'Little Mix',
                      style: Theme.of(context)
                          .appTexts
                          .labelDefaultEmphasis
                          .copyWith(
                        color: Theme.of(context)
                            .appColors
                            .textDefault,
                      ),
                    ),
                    SizedBox(
                      height: Theme.of(context)
                          .appDimensions
                          .sizedBoxHelpIndication,
                    ),
                    Text(
                      '2033533 Listeners',
                      style: Theme.of(context)
                          .appTexts
                          .labelDefaultEmphasis,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
