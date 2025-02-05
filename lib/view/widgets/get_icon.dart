import 'package:flutter/material.dart';
import 'package:food_app_with_getx/resources/color/app_color.dart';

class GetIconWidget extends StatelessWidget {
  final String title;
  final String icon;

  const GetIconWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 22,
          height: 22,
          child: Image.asset("assets/images/$icon"),
        ),
        const SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(
              color: AppColor.black.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
