import 'package:fin_wise/core/widgets/fit_hieght.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';
import 'total_balance.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FitHieght(
      child: Column(
        children: [
          Row(
            children: [
              TotalBalance(),
             

              TotalBalance(icon: Icons.open_in_new, title: 'Total Expense'),
            ],
          ),
        ],
      ),
    );
  }
}
