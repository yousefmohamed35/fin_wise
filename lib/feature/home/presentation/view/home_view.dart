import 'package:fin_wise/core/themes/text_style.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/color_manager.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.white,
            ),
            child: Icon(Icons.notifications_none, size: 30),
          ),
        ],
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Hi, Welcome Back',
            style: TextStyles.title(color: ColorManager.lettersAndIcons),
          ),
        ),
      ),
    );
  }
}
