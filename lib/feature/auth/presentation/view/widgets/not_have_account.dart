import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have account?',
          style: TextStyles.paragraph(
            color: ColorManager.lettersAndIcons,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Sign up',
            style:
                TextStyles.paragraph(
                  color: ColorManager.blueButton,
                ).copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: ColorManager.blueButton,
                ),
          ),
        ),
      ],
    );
  }
}
