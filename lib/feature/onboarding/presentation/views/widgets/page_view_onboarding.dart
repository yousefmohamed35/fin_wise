import 'package:fin_wise/feature/onboarding/presentation/views/widgets/onboarding_welcome_body.dart';
import 'package:flutter/widgets.dart';

import 'onboarding_welcom_body_two.dart';

class PageViewOnboarding extends StatelessWidget {
  const PageViewOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [OnboardingWelcomeBody(), OnboardingWelcomBodyTwo()],
    );
  }
}
