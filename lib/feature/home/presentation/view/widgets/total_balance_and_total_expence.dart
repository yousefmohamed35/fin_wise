import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import 'total_balance.dart';
import 'total_expense.dart';

class TotalBalanceAndTotalExpence extends StatelessWidget {
  const TotalBalanceAndTotalExpence({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TotalBalance(),
        SizedBox(
          height: 42,
          child: VerticalDivider(color: ColorManager.lightGreen),
        ),
    
        TotalExpense(),
      ],
    );
  }
}
