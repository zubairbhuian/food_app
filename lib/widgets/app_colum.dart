import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/widgets/small_text.dart';

import '../utils/colors.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColum extends StatelessWidget {
  final String text;
  const AppColum({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: 26.sp,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Wrap(
                children: List.generate(
              5,
              (index) => Icon(
                Icons.star,
                color: AppColors.yellowColor,
                size: 15,
              ),
            )),
            const SizedBox(width: 10),
            const SmallText(text: '4.5'),
            const SizedBox(width: 10),
            const SmallText(text: '1245'),
            const SizedBox(width: 10),
            const SmallText(text: 'comments'),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              iconColor: AppColors.iconColor1,
              text: 'Normal',
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              iconColor: AppColors.mainColor,
              text: '1.7Km',
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              iconColor: AppColors.iconColor2,
              text: '32min',
            ),
          ],
        )
      ],
    );
  }
}
