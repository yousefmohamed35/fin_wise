import 'package:fin_wise/core/widgets/custom_container.dart';
import 'package:fin_wise/feature/auth/presentation/view/widgets/fit_hieght.dart';
import 'package:fin_wise/feature/auth/presentation/view/widgets/identify_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/title_text.dart';
import 'password_text_form_field.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FitHieght(
      child: Column(
        children: [
          SizedBox(height: 50),
          TitleText(text: 'New Password'),
          SizedBox(height: 50),
          Expanded(
            child: CustomContainer(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Spacer(),
                    IdentifyTextField(title: 'New Password'),
                    PasswordTextFormField(),
                    Spacer(),
                    IdentifyTextField(title: 'Confirm Password'),
                    PasswordTextFormField(),
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            title: 'Change Password',
                            color: ColorManager.primary,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
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
