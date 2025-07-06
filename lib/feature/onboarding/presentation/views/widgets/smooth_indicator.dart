import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/themes/color_manager.dart';

class CustomSmoothIndicator extends StatelessWidget {
  const CustomSmoothIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 2,
      effect: CustomizableEffect(
        activeDotDecoration: DotDecoration(
          width: 12,
          height: 12,
          color: ColorManager.primary, // filled color
          borderRadius: BorderRadius.circular(
            10,
          ), // لا تحتاج stroke هنا لأنه fill
        ),
        dotDecoration: DotDecoration(
          width: 10,
          height: 10,
          color: Colors.transparent, // transparent fill
          dotBorder: DotBorder(color: ColorManager.bar, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
