import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_container.dart';
import '../../../../../core/widgets/title_text.dart';
import 'signup_form_body.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 50),
        TitleText(text: 'Create Account'),
        CustomContainer(
          child: SignupFormBody(),
        ),
      ],
    );
  }
}

