import 'package:flutter/material.dart';

import '../../../../core/themes/color_manager.dart';
import 'widgets/security_bin_view_body.dart';


class SecurityBinView extends StatelessWidget {
  const SecurityBinView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SecurityBinViewBody(),
      );
  }
}