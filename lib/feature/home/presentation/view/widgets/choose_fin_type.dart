import 'package:fin_wise/feature/home/presentation/view/widgets/daily.dart';
import 'package:fin_wise/feature/home/presentation/view/widgets/monthly.dart';
import 'package:fin_wise/feature/home/presentation/view/widgets/weekly.dart';
import 'package:flutter/material.dart';
import '../../../../../core/themes/color_manager.dart';
import 'fin_type_text.dart';

class ChooseFinType extends StatefulWidget {
  const ChooseFinType({super.key});

  @override
  State<ChooseFinType> createState() => _ChooseFinTypeState();
}

class _ChooseFinTypeState extends State<ChooseFinType> {
  int index = 0;
  List<Widget> widgets = [Daily(), Weekly(), Monthly()];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorManager.lightGreen,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FinTypeText(
                title: 'Daily',
                isSelected: index == 0,
                onPressed: () {
                  index = 0;
                  setState(() {});
                },
              ),
              FinTypeText(
                title: 'Weekly',
                isSelected: index == 1,
                onPressed: () {
                  index = 1;
                  setState(() {});
                },
              ),
              FinTypeText(
                title: 'Monthly',
                isSelected: index == 2,
                onPressed: () {
                  index = 2;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        widgets[index],
      ],
    );
  }
}
