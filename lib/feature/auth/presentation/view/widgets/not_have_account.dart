import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class SwitchBetweenLoginAndSignup extends StatelessWidget {
  const SwitchBetweenLoginAndSignup({super.key, required this.question, required this.action});
  final String question;
  final String action;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: TextStyles.paragraph(color: ColorManager.lettersAndIcons),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            action,
            style: TextStyles.paragraph(color: ColorManager.blueButton)
                .copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: ColorManager.blueButton,
                ),
          ),
        ),
      ],
    );
  }
}
