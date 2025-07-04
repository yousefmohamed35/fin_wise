import 'package:fin_wise/core/themes/animation/animate_do.dart';
import 'package:fin_wise/core/themes/color_manager.dart';
import 'package:flutter/material.dart';

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
              child: Icon(Icons.monetization_on),
            ),
          ],
        ),
      ),
    );
  }
}
