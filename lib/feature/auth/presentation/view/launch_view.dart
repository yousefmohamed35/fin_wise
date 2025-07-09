import 'package:fin_wise/core/themes/color_manager.dart';
import 'package:fin_wise/core/themes/text_style.dart';
import 'package:fin_wise/core/utils/app_images.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';

class LaunchView extends StatelessWidget {
  const LaunchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(AppImages.trendyGreen),
            Text(
              'FinWise',
              style: TextStyles.title(
                color: ColorManager.primary,
                fontSize: 40,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              ' personal finance app that helps users manage their income, expenses, and savings in one place',
              style: TextStyles.paragraph(
                color: ColorManager.darkModeGreenBlack,
                fontSize: 12,
              ),
            ),
            CustomButton(title: 'Log in', color: ColorManager.primary),
            CustomButton(title: 'Sign Up', color: ColorManager.lightGreen),
          ],
        ),
      ),
    );
  }
}
