import 'package:fin_wise/core/themes/color_manager.dart';
import 'package:fin_wise/core/themes/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
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
