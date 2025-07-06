import 'package:flutter/material.dart';
import 'title_text_onboarding.dart';

class OnboardingWelcomeBody extends StatelessWidget {
  const OnboardingWelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        TitleTextOnboarding(text: 'Welcome To Expense Manager'),
        
      ],
    );
  }
}
