import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class TotalExpense extends StatelessWidget {
  const TotalExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.open_in_new, size: 12),
            SizedBox(width: 5),
            Text(
              'Total Balance',
              style: TextStyles.paragraph(color: ColorManager.lettersAndIcons),
            ),
          ],
        ),
        Text(
          r'-$1,187.40',
          style: TextStyles.title(color: ColorManager.oceanBlueButton),
        ),
      ],
    );
  }
}
