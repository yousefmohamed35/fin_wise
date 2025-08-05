import 'package:flutter/material.dart';

import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.color,
    required this.title,
    required this.subTitle, required this.iconData,
  });
  final Color color;
  final String title;
  final String subTitle;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyles.paragraph(color: ColorManager.lettersAndIcons),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyles.title(
          color: color,
          fontSize: 16,
        ),
      ),
    );
  }
}
