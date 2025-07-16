import 'package:fin_wise/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class LaunchViewBody extends StatelessWidget {
  const LaunchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
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
            SizedBox(height: 30),
            CustomButton(
              title: 'Log in',
              color: ColorManager.primary,
              onTap: () {
                GoRouter.of(context).go(Routes.login);
              },
            ),
            SizedBox(height: 10),
            CustomButton(
              title: 'Sign Up',
              color: ColorManager.lightGreen,
              onTap: () {
                GoRouter.of(context).go(Routes.signup);
              },
            ),
            CustomTextButton(
              onPressed: () {},
              title: 'Forget Password?',
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
