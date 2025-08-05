import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import 'custom_list_tile.dart';
import 'savings_widget.dart';

class SavingsGoalsCard extends StatelessWidget {
  const SavingsGoalsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: const EdgeInsets.only(
        left: 16,
        top: 16,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          SavingsWidget(),
          SizedBox(width: 20),
          VerticalDivider(
            thickness: 2,
            indent: 15,
            endIndent: 15,
            color: ColorManager.lightGreen,
          ),
          Expanded(
            child: Column(
              children: [
                CustomListTile(
                  color: ColorManager.lettersAndIcons,
                  title: 'Revenue Last Week',
                  subTitle: r'$4,000.00',
                  iconData: Icons.money,
                ),
                Divider(
                  thickness: 2,
                  color: ColorManager.lightGreen,
                  indent: 15,
                  endIndent: 15,
                ),
                CustomListTile(
                  color: ColorManager.oceanBlueButton,
                  title: 'Food Last Week',
                  subTitle: r'-$1,000.00',
                  iconData: Icons.fastfood,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
