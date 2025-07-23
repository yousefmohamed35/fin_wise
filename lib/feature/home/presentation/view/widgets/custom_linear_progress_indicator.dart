import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  const CustomLinearProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LinearProgressIndicator(
          value: 0.3,
          backgroundColor: ColorManager.lightGreen,
          color: ColorManager.background,
          borderRadius: BorderRadius.circular(30),
          minHeight: 27,
          semanticsLabel: 'Linear progress indicator',
          semanticsValue: '30%',
        ),
        Positioned(
          left: 20,
          top: 3,
          bottom: 0,
          child: Text(
            '30%',
            style: TextStyles.paragraph(color: ColorManager.white),
          ),
        ),
        Positioned(
          right: 20,
          top: 3,
          bottom: 0,
          child: Text(
            r'$20,000.00',
            style: TextStyles.paragraph(
              color: ColorManager.darkModeGreenBlack,
            ),
          ),
        ),
      ],
    );
  }
}
