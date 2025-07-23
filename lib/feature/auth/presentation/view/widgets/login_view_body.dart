import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_container.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../core/widgets/title_text.dart';
import 'email_text_form_field.dart';
import '../../../../../core/widgets/fit_hieght.dart';
import 'identify_text_field.dart';
import 'not_have_account.dart';
import 'password_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FitHieght(
      child: Column(
        children: [
          SizedBox(height: 50),
          TitleText(text: 'Welcome'),
          SizedBox(height: 10),
          Expanded(
            child: CustomContainer(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    IdentifyTextField(title: 'Username or Email'),
                    SizedBox(height: 10),
                    CustomTextFormField(hintText: 'example@example.com'),
                    SizedBox(height: 30),
                    IdentifyTextField(title: 'Password'),
                    SizedBox(height: 10),
                    PasswordTextFormField(),
                    SizedBox(height: 30),
                    CustomButton(
                      onTap: () {
                        GoRouter.of(context).go(Routes.home);
                      },
                      title: 'Log in',
                      color: ColorManager.primary,
                    ),
                    CustomTextButton(
                      onPressed: () {},
                      title: 'Forget Password?',
                      size: 14,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Or sign up with',
                      style: TextStyles.paragraph(
                        color: ColorManager.lettersAndIcons,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.facebook),
                        SizedBox(width: 24),
                        SvgPicture.asset(AppIcons.google),
                      ],
                    ),
                    SizedBox(height: 30),
                    SwitchBetweenLoginAndSignup(
                      question: 'Don\'t have account?',
                      action: 'Sign up',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
