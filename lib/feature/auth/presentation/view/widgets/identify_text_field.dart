import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class IdentifyTextField extends StatelessWidget {
  const IdentifyTextField({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.topLeft,
      child: Text(
        title,
        style: TextStyles.subTitle(color: ColorManager.lettersAndIcons),
      ),
    );
  }
}
