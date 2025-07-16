import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'email_text_form_field.dart';
import 'identify_text_field.dart';
import 'not_have_account.dart';
import 'password_text_form_field.dart';
import 'term_of_use_text.dart';

class SignupFormBody extends StatelessWidget {
  const SignupFormBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(height: 15),
          IdentifyTextField(title: 'Full name'),
          CustomTextFormField(hintText: 'yousef mohamed yousef'),
          SizedBox(height: 15),
          IdentifyTextField(title: 'Email'),
          CustomTextFormField(hintText: 'example@example.com'),
          SizedBox(height: 15),
          IdentifyTextField(title: 'Mobile phone'),
          CustomTextFormField(hintText: '+20 123 456 789'),
          SizedBox(height: 15),
          IdentifyTextField(title: 'Birth date'),
          CustomTextFormField(hintText: 'DD/MM/YYYY'),
          SizedBox(height: 15),
          IdentifyTextField(title: 'Password'),
          PasswordTextFormField(),
          SizedBox(height: 15),
          IdentifyTextField(title: 'Confirm Password'),
          PasswordTextFormField(),
          SizedBox(height: 15),
          TermOfUseText(),
          SizedBox(height: 15),
          CustomButton(title: 'Sign up', color: ColorManager.primary),
          SizedBox(height: 15),
          SwitchBetweenLoginAndSignup(
            question: 'Already have an account!',
            action: 'Log in',
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
