import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/themes/color_manager.dart';

class CustomBinTextField extends StatelessWidget {
  const CustomBinTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
  });
  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: ColorManager.primary, width: 2),
      ),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        onChanged: onChanged,
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        decoration: InputDecoration(border: InputBorder.none, counterText: ''),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
    );
  }
}
