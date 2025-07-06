import 'package:fin_wise/core/themes/color_manager.dart';
import 'package:fin_wise/feature/onboarding/presentation/views/widgets/page_view_onboarding.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: PageViewOnboarding(),
    );
  }
}
