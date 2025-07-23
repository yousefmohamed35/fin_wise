import 'package:fin_wise/core/widgets/fit_hieght.dart';
import 'package:flutter/material.dart';
import 'total_balance_and_total_expence.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FitHieght(
      child: Column(
        children: [
          TotalBalanceAndTotalExpence(),
        ],
      ),
    );
  }
}

