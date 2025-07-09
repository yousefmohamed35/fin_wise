import 'package:fin_wise/core/themes/color_manager.dart';
import 'package:flutter/material.dart';
import 'widgets/login_view_body.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: LoginViewBody(),
    );
  }
}

