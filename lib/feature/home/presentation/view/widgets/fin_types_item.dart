import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';
import 'sign_of_fin_type.dart';
import 'title_and_date_of_fin.dart';

class FinTypesItem extends StatelessWidget {
  const FinTypesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        SignOfFinType(),
        TitleAndDateOfFin(),
        SizedBox(
          height: 30,
          child: VerticalDivider(color: ColorManager.primary),
        ),
        Text(
          'Monthly',
          style: TextStyles.paragraph(color: ColorManager.darkModeGreenBlack),
        ),
        SizedBox(
          height: 30,
          child: VerticalDivider(color: ColorManager.primary),
        ),
        Text(
          r'$4000.00',
          style: TextStyles.subTitle(color: ColorManager.darkModeGreenBlack),
        ),
      ],
    );
  }
}
