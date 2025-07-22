import 'package:fin_wise/feature/auth/presentation/view/widgets/fit_hieght.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_container.dart';
import '../../../../../core/widgets/title_text.dart';
import 'email_text_form_field.dart';
import 'identify_text_field.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FitHieght(
      child: Column(
        children: [
          SizedBox(height: 50),
          TitleText(text: 'Forget Password'),
          SizedBox(height: 50),
          Expanded(
            child: CustomContainer(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80),
                    Text(
                      'Reset Password',
                      style: TextStyles.title(color: ColorManager.bar),
                    ),
                    Text(
                      'Please enter your email address to receive a link to create a new password via email',
                      textAlign: TextAlign.center,
                      style: TextStyles.paragraph(color: ColorManager.bar),
                    ),
                    Spacer(),
                    IdentifyTextField(title: 'Enter Email Address'),
                    CustomTextFormField(hintText: 'example@example.com'),

                    Spacer(),
                    Center(
                      child: CustomButton(
                        onTap: () {},
                        title: 'Next Step',
                        color: ColorManager.primary,
                      ),
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
