import 'package:fin_wise/core/themes/animation/animate_do.dart';
import 'package:fin_wise/core/themes/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_icons.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomBounceInDown(
              duration: Duration(seconds: 2),
              child: SvgPicture.asset(AppIcons.trendy),
            ),
            
          ],
        ),
      ),
    );
  }
}
