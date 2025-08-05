import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';

class SignOfFinType extends StatelessWidget {
  const SignOfFinType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 57,
      height: 53,
      decoration: BoxDecoration(
        color: ColorManager.blueButton,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(Icons.money, color: ColorManager.white),
    );
  }
}
