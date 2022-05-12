import 'package:flutter/material.dart';
import 'package:turac/widgets/big_text.dart';
import 'package:turac/widgets/icon_and_text.dart';
import 'package:turac/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class AppColumn extends StatelessWidget {
  final String text;
  final String rating;
 

  const AppColumn({Key? key, required this.text, required this.rating,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
                children: List.generate(
                    5,
                    (index) => Icon(
                          Icons.star,
                          color: AppColors.mainColor,
                          size: 15,
                        ))),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: rating),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "1287"),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: "1.7km",
                iconColor: AppColors.mainColor),
            IconAndTextWidget(
                icon: Icons.access_time_filled_rounded,
                text: "32min",
                iconColor: AppColors.iconColor2),
          ],
        ),
      ],
    );
  }
}
