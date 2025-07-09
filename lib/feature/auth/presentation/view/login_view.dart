import 'package:fin_wise/core/themes/color_manager.dart';
import 'package:fin_wise/core/themes/text_style.dart';
import 'package:fin_wise/core/widgets/custom_container.dart';
import 'package:fin_wise/core/widgets/title_text.dart';
import 'package:fin_wise/feature/auth/presentation/view/widgets/email_text_form_field.dart';
import 'package:flutter/material.dart';

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Username or Email',
                    style: TextStyles.subTitle(
                      color: ColorManager.lettersAndIcons,
                    ),
                  ),
                  EmailTextFormField(),
                  Text(
                    'Password',
                    style: TextStyles.subTitle(
                      color: ColorManager.lettersAndIcons,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
