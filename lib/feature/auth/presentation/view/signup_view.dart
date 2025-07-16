import 'package:fin_wise/core/themes/color_manager.dart';
import 'package:fin_wise/core/widgets/custom_container.dart';
import 'package:fin_wise/core/widgets/title_text.dart';
import 'package:fin_wise/feature/auth/presentation/view/widgets/email_text_form_field.dart';
import 'package:fin_wise/feature/auth/presentation/view/widgets/identify_text_field.dart';
import 'package:fin_wise/feature/auth/presentation/view/widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/text_style.dart';
import 'widgets/term_of_use_text.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Column(
        children: [
          SizedBox(height: 50),
          TitleText(text: 'Create Account'),
          CustomContainer(
            child: Column(
              children: [
                IdentifyTextField(title: 'Full name'),
                CustomTextFormField(hintText: 'yousef mohamed yousef'),
                IdentifyTextField(title: 'Email'),
                CustomTextFormField(hintText: 'example@example.com'),
                IdentifyTextField(title: 'Mobile phone'),
                CustomTextFormField(hintText: '+20 123 456 789'),
                IdentifyTextField(title: 'Birth date'),
                CustomTextFormField(hintText: 'DD/MM/YYYY'),
                IdentifyTextField(title: 'Password'),
                PasswordTextFormField(),
                IdentifyTextField(title: 'Confirm Password'),
                PasswordTextFormField(),
                TermOfUseText(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

