import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/themes/animation/animate_do.dart';
import '../../../../../core/themes/animation/custom_text_animation.dart';
import '../../../../../core/utils/app_icons.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomBounceInDown(
            duration: Duration(seconds: 2),
            child: SvgPicture.asset(AppIcons.trendy),
          ),
          CustomTextAnimation(title: 'FinWise'),
        ],
      ),
    );
  }
}
