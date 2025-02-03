import 'package:flutter/material.dart';
import 'package:food_app_with_getx/resources/color/app_color.dart';


class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Color? bgColor;

  const CustomElevatedButton({
    super.key,
    this.bgColor,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor ?? AppColor.black,
        foregroundColor: Colors.white,
        fixedSize: const Size.fromWidth(double.maxFinite),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onTap,
      child: Text(
        title,
      ),
    );
  }
}