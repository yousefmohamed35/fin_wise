import 'package:fin_wise/feature/auth/presentation/view/widgets/custom_bin_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RowBinField extends StatefulWidget {
  const RowBinField({super.key});

  @override
  State<RowBinField> createState() => _RowBinFieldState();
}

class _RowBinFieldState extends State<RowBinField> {
  final List<FocusNode> focusNodes = List.generate(6, (_) => FocusNode());
  final List<TextEditingController> controllers = List.generate(
    6,
    (_) => TextEditingController(),
  );
  void onChanged(int index, String value) {
    if (value.length == 1) {
      if (index < 5) {
        focusNodes[index + 1].requestFocus();
      } else {
        focusNodes[index].unfocus();
      }
    }
  }

  void onBackspace(int index, String value) {
    if (value.isEmpty && index > 0) {
      focusNodes[index - 1].requestFocus();
      controllers[index - 1].clear();
    }
  }

  void onKey(int index, KeyEvent event) {
    if (event is KeyDownEvent &&
        event.logicalKey == LogicalKeyboardKey.backspace &&
        controllers[index].text.isEmpty) {
      if (index > 0) {
        controllers[index - 1].clear();
        focusNodes[index - 1].requestFocus();
      }
    }
  }

  @override
  void dispose() {
    for (final f in focusNodes) {
      f.dispose();
    }
    for (final c in controllers) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        6,
        (index) => CustomBinTextField(
          controller: controllers[index],
          onKeyEvent: (value) => onKey(index, value),
          onChanged: (value) {
            onChanged(index, value);
            
          },

          focusNode: focusNodes[index],
        ),
      ),
    );
  }
}
