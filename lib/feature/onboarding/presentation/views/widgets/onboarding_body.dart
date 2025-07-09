import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
    required this.image,
    required this.onPressed,
    required this.title,
  });

  final String image;
  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Stack(
          fit: StackFit.passthrough,
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: CircleAvatar(
                radius: 125,
                backgroundColor: ColorManager.lightGreen,
              ),
            ),
    
            Image.asset(
              image,
              width: 300,
              height: 300,
              filterQuality: FilterQuality.high,
            ),
          ],
        ),
        SizedBox(height: 30),
        CustomTextButton(onPressed: onPressed, title: title),
      ],
    );
  }
}
