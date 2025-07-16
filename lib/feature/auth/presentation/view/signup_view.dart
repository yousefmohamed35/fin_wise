import 'package:fin_wise/core/themes/color_manager.dart';
import 'package:fin_wise/core/widgets/custom_container.dart';
import 'package:fin_wise/core/widgets/title_text.dart';
import 'package:flutter/material.dart';


class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: ListView(
        children: [
          SizedBox(height: 50),
          TitleText(text: 'Create Account'),
          CustomContainer(
            child: SignupFormBody(),
          ),
        ],
      ),
    );
  }
}

