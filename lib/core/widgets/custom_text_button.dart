import 'package:flutter/material.dart';

import '../themes/color_manager.dart';
import '../themes/text_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.size,
  });

  final void Function()? onPressed;
  final String title;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyles.title(color: ColorManager.bar, fontSize: size),
      ),
    );
  }
}
