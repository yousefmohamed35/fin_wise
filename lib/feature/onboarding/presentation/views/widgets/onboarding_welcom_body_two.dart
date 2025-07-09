import 'package:fin_wise/core/routes/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/widgets/custom_container.dart';
import '../../../../../core/widgets/title_text.dart';

class OnboardingWelcomBodyTwo extends StatelessWidget {
  const OnboardingWelcomBodyTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        TitleText(text: 'Are You Ready To Take Control Of Your Finances?'),
        SizedBox(height: 20),

        Expanded(
          child: CustomContainer(
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
