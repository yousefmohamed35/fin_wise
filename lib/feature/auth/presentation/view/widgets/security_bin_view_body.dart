import 'package:fin_wise/core/widgets/custom_button.dart';
import 'package:fin_wise/core/widgets/custom_container.dart';
import 'package:fin_wise/core/widgets/title_text.dart';
import 'package:fin_wise/core/widgets/fit_hieght.dart';
import 'package:fin_wise/feature/auth/presentation/view/widgets/row_bin_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class SecurityBinViewBody extends StatelessWidget {
  const SecurityBinViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FitHieght(
      child: Column(
        children: [
          SizedBox(height: 50),
          TitleText(text: 'Security Bin'),
          SizedBox(height: 50),
          Expanded(
            child: CustomContainer(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Spacer(),
                    Text(
                      'Enter Security Pin',
                      style: TextStyles.title(color: ColorManager.bar),
                    ),
                    Spacer(),
                    RowBinField(),
                    Spacer(),
                    CustomButton(
                      title: 'Accept',
                      color: ColorManager.primary,
                      onTap: () =>
                          GoRouter.of(context).push(Routes.newPassword),
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                      title: 'Send Again',
                      color: ColorManager.lightGreen,
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
