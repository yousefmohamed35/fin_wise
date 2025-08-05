import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class TitleAndDateOfFin extends StatelessWidget {
  const TitleAndDateOfFin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Salary',
          style: TextStyles.subTitle(
            color: ColorManager.darkModeGreenBlack,
          ),
        ),
        Text(
          '18:27 - April 30',
          style: TextStyles.subTitle(
            color: ColorManager.oceanBlueButton,
          ),
        ),
      ],
    );
  }
}
