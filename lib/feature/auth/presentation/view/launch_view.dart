import 'package:fin_wise/core/themes/color_manager.dart';
import 'package:flutter/material.dart';

import 'widgets/launch_view_body.dart';


class LaunchView extends StatelessWidget {
  const LaunchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: LaunchViewBody(),
    );
  }
}

