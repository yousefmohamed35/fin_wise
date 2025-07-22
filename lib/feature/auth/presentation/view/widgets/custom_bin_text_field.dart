import 'package:fin_wise/core/themes/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/themes/color_manager.dart';

class CustomBinTextField extends StatelessWidget {
  const CustomBinTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.onKeyEvent,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String)? onChanged;
  final void Function(KeyEvent)? onKeyEvent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: ColorManager.primary, width: 2),
      ),
      child: Center(
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          style: TextStyles.subTitle(color: ColorManager.bar),
          cursorHeight: 18,
          cursorColor: ColorManager.primary,
          controller: controller,
          focusNode: focusNode,
          onChanged: onChanged,
          keyboardType: TextInputType.number,
          maxLength: 1,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            border: InputBorder.none,
            counterText: '',
            isCollapsed: true, // 👈 Important: removes extra padding
          ),
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
      ),
    );
  }
}
