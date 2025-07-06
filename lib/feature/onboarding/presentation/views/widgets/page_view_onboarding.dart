import 'package:fin_wise/feature/onboarding/presentation/views/widgets/onboarding_welcome_body.dart';
import 'package:fin_wise/feature/onboarding/presentation/views/widgets/smooth_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'onboarding_welcom_body_two.dart';

class PageViewOnboarding extends StatefulWidget {
  const PageViewOnboarding({super.key});

  @override
  State<PageViewOnboarding> createState() => _PageViewOnboardingState();
}

class _PageViewOnboardingState extends State<PageViewOnboarding> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          onPageChanged: (value) {},
          controller: controller,
          children: [OnboardingWelcomeBody(), OnboardingWelcomBodyTwo()],
        ),
        Positioned(
          bottom: 50,
          left: 0,
          right: 0, // this makes it expand across width
          child: Center(child: CustomSmoothIndicator(controller: controller)),
        ),
      ],
    );
  }
}
