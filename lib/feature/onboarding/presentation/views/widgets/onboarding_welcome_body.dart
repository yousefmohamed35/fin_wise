import 'package:fin_wise/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'custom_onboarding_container.dart';
import 'title_text_onboarding.dart';

class OnboardingWelcomeBody extends StatelessWidget {
  const OnboardingWelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        TitleTextOnboarding(text: 'Welcome To Expense Manager'),
        SizedBox(height: 20),

        Expanded(
          child: CustomOnboardingContainer(image: AppImages.onboardingOnee),
        ),
      ],
    );
  }
}
