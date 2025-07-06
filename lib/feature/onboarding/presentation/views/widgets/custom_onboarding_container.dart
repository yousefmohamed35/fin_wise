import 'package:flutter/material.dart';
import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/themes/text_style.dart';

class CustomOnboardingContainer extends StatelessWidget {
  const CustomOnboardingContainer({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 50),
          Stack(
            fit: StackFit.passthrough,
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: CircleAvatar(
                  radius: 125,
                  backgroundColor: ColorManager.lightGreen,
                ),
              ),

              Image.asset(
                image,
                width: 300,
                height: 300,
                filterQuality: FilterQuality.high,
              ),
            ],
          ),
          SizedBox(height: 30),
          Text('Next', style: TextStyles.title(color: ColorManager.bar)),
        ],
      ),
    );
  }
}
