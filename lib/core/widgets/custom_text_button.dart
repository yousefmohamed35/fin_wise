import 'package:flutter/material.dart';

import '../themes/color_manager.dart';
import '../themes/text_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
      title,
        style: TextStyles.title(color: ColorManager.bar),
      ),
    );
  }
}
