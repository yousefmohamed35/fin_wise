import 'package:fin_wise/core/widgets/custom_container.dart';
import 'package:fin_wise/core/widgets/fit_hieght.dart';
import 'package:flutter/material.dart';
import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';
import 'custom_linear_progress_indicator.dart';
import 'savings_goal_card.dart';

import 'total_balance_and_total_expence.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FitHieght(
      child: Column(
        spacing: 20,
        children: [
          SizedBox(height: 1),
          TotalBalanceAndTotalExpence(),
          CustomLinearProgressIndicator(),
          Text(
            '30% of your goal reached',
            style: TextStyles.paragraph(color: ColorManager.lettersAndIcons),
          ),
          SizedBox(height: 1),
          Expanded(
            child: CustomContainer(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SavingsGoalsCard(),
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

