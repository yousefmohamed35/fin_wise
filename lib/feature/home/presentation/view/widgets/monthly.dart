import 'package:flutter/material.dart';

import 'fin_types_item.dart';

class Monthly extends StatelessWidget {
  const Monthly({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: FinTypesItem(),
          );
        }),
      ),
    );
  }
}
