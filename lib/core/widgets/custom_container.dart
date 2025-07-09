import 'package:flutter/material.dart';
import '../../../../../core/themes/color_manager.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, required this.child,
   
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
      ),
      child: child,
    );
  }
}
