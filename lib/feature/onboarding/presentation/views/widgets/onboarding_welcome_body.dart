import 'package:fin_wise/core/utils/app_images.dart';
import 'package:fin_wise/feature/onboarding/presentation/views/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_container.dart';
import '../../../../../core/widgets/title_text.dart';


class OnboardingWelcomeBody extends StatelessWidget {
  const OnboardingWelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        TitleText(text: 'Welcome To Expense Manager'),
        SizedBox(height: 60),

        Expanded(
          child: CustomContainer(
           child: OnboardingBody(image: AppImages.onboardingOnee, onPressed: (){}, title: 'Next'),
          ),
        ),
      ],
    );
  }
}
