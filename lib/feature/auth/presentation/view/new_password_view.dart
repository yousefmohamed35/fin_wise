import 'package:flutter/material.dart';

import '../../../../core/themes/color_manager.dart';
import 'widgets/new_password_view_body.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: NewPasswordViewBody(),);
  }
}