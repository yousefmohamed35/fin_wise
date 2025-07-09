import 'package:flutter/material.dart';

import '../themes/color_manager.dart';
import '../themes/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.color,
    this.onTap,
  });
  final String title;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 207,
        height: 45,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyles.title(color: ColorManager.lettersAndIcons),
        ),
      ),
    );
  }
}
