import 'package:fin_wise/core/routes/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_images.dart';
import 'custom_onboarding_container.dart';
import 'title_text_onboarding.dart';

class OnboardingWelcomBodyTwo extends StatelessWidget {
  const OnboardingWelcomBodyTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        TitleTextOnboarding(
          text: 'Are You Ready To Take Control Of Your Finances?',
        ),
        SizedBox(height: 20),

        Expanded(
          child: CustomOnboardingContainer(
            image: AppImages.onboardingTwo,
            title: 'Get Started',
            onPressed: () {
              GoRouter.of(context).pushReplacement(Routes.launch);
            },
          ),
        ),
      ],
    );
  }
}
