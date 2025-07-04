import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../color_manager.dart';
import '../text_style.dart';

class CustomTextAnimation extends StatelessWidget {
  const CustomTextAnimation({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          title,
          speed: const Duration(milliseconds: 300),
          textStyle: TextStyles.title(color: ColorManager.white),
        ),
      ],
      totalRepeatCount: 1,
      pause: const Duration(milliseconds: 500),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }
}
