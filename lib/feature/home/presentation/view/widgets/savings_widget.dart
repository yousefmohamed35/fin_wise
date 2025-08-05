import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';
import 'custom_ciruclar_progress_indicator.dart';

class SavingsWidget extends StatelessWidget {
  const SavingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomCircularProgressIndicator(),
        const SizedBox(height: 10),
        Text(
          'Savings\n on goals',
          textAlign: TextAlign.center,
          style: TextStyles.subTitle(
            color: ColorManager.lettersAndIcons,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
