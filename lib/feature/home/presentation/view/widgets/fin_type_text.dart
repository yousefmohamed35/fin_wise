import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class FinTypeText extends StatelessWidget {
  const FinTypeText({
    super.key,
    required this.title,
    required this.isSelected,
    this.onPressed,
  });
  final String title;
  final bool isSelected;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: isSelected ? ColorManager.primary : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(30),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyles.paragraph(color: ColorManager.darkModeGreenBlack),
      ),
    );
  }
}
