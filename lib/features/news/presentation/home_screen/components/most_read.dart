import 'package:flutter/material.dart';
import 'package:news/config/theme/theme_data_extanded.dart';

class MostRead extends StatelessWidget {
  const MostRead({super.key});

  @override
  Widget build(BuildContext context) {
    var itemCont = 4;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Most Read",
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
          height: itemCont * 120,
          child: ListView.builder(
            itemCount: itemCont,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/images/football.webp",
                        height : 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Theme.of(context).appDimensions.sizedBoxHelpIndication,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          "Here we go : Onana alngj an if irnjsidf jsnfjlkpopm",
                          maxLines : 2,
                          style: Theme.of(context)
                              .appTexts
                              .labelDefaultEmphasis
                              .copyWith(
                            color: Theme.of(context)
                                .appColors
                                .textDefault,
                            fontSize: 20
                          ),
                        ),
                      ),
                      Text(
                        "Here we go : Onana",
                        style:
                        Theme.of(context).appTexts.labelDefaultEmphasis,
                      ),
                      Text(
                        "Here we go : Onana",
                        style:
                        Theme.of(context).appTexts.labelDefaultEmphasis,
                      ),
                    ],
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
