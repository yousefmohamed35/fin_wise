import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class TermOfUseText extends StatelessWidget {
  const TermOfUseText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyles.paragraph(color: ColorManager.lettersAndIcons),
        children: [
          const TextSpan(text: "By continuing, you agree to "),
          TextSpan(
            text: "Terms & Conditions",
            style: TextStyles.subTitle(
              color: ColorManager.lettersAndIcons,
              fontSize: 13,
            ),
          ),
          const TextSpan(text: " and "),
          TextSpan(
            text: "Privacy Policy",
            style: TextStyles.subTitle(
              color: ColorManager.lettersAndIcons,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
