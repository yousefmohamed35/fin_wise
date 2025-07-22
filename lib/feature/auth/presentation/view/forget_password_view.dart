import 'package:flutter/material.dart';
import '../../../../core/themes/color_manager.dart';
import 'widgets/forget_password_view_body.dart';


class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: ForgetPasswordViewBody(),
    );
  }
}

