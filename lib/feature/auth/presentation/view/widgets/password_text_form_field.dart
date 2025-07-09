import 'package:fin_wise/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,

      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.eyeOff),
        ),
        hintText: '••••••••',
        filled: true,
        fillColor: ColorManager.lightGreen,
        border: customBorder(),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(),
        hintStyle: TextStyles.paragraph(
          color: ColorManager.lettersAndIcons.withOpacity(0.5),
        ),
      ),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    );
  }
}
