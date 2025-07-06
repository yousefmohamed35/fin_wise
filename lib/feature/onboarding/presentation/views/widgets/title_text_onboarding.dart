import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class TitleTextOnboarding extends StatelessWidget {
  const TitleTextOnboarding({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: TextStyles.title(color: ColorManager.bar, fontSize: 30),
      ),
    );
  }
}
