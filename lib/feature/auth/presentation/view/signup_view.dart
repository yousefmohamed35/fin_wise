import 'package:fin_wise/core/themes/color_manager.dart';
import 'package:flutter/material.dart';
import 'widgets/signup_view_body.dart';


class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SignupViewBody(),
    );
  }
}

