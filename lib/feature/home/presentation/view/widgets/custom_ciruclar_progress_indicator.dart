import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 68,
          width: 68,
          child: CircularProgressIndicator(
            value: 0.3,
            strokeWidth: 2,
            color: ColorManager.oceanBlueButton,
            backgroundColor: ColorManager.lightGreen,
          ),
        ),
        Positioned(
          bottom: 0,
          top: 0,
          left: 0,
          right: 0,
          child: Icon(Icons.car_crash, size: 30),
        ),
      ],
    );
  }
}
