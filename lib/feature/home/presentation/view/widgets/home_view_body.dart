import 'package:fin_wise/core/widgets/fit_hieght.dart';
import 'package:flutter/material.dart';
import 'custom_linear_progress_indicator.dart';
import 'total_balance_and_total_expence.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FitHieght(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TotalBalanceAndTotalExpence(),
            CustomLinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
