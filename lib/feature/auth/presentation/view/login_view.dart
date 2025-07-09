import 'package:fin_wise/core/themes/color_manager.dart';
import 'package:fin_wise/core/themes/text_style.dart';
import 'package:fin_wise/core/utils/app_icons.dart';
import 'package:fin_wise/core/widgets/custom_button.dart';
import 'package:fin_wise/core/widgets/custom_container.dart';
import 'package:fin_wise/core/widgets/custom_text_button.dart';
import 'package:fin_wise/core/widgets/title_text.dart';
import 'package:fin_wise/feature/auth/presentation/view/widgets/email_text_form_field.dart';
import 'package:fin_wise/feature/auth/presentation/view/widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/identify_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Column(
        children: [
          SizedBox(height: 50),
          TitleText(text: 'Welcome'),
          CustomContainer(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  IdentifyTextField(title: 'Username or Email'),
                  EmailTextFormField(),
                  IdentifyTextField(title: 'Password'),
                  PasswordTextFormField(),
                  CustomButton(title: 'Log in', color: ColorManager.primary),
                  CustomTextButton(
                    onPressed: () {},
                    title: 'Forget Password?',
                    size: 14,
                  ),
                  Text(
                    'Or sign up with',
                    style: TextStyles.paragraph(
                      color: ColorManager.lettersAndIcons,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.facebook),
                      SizedBox(width: 24),
                      SvgPicture.asset(AppIcons.google),
                    ],
                  ),
                  NotHaveAccount(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

