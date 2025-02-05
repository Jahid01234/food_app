import 'package:flutter/material.dart';
import 'package:food_app_with_getx/resources/color/app_color.dart';

class CustomQuantity extends StatelessWidget {
  const CustomQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: AppColor.gradientPrimary,
      ),
      child: Row(
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
              shape: BoxShape.circle
              //borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(
              child: Text(
                "-",
                style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Expanded(
            child: Text(
              "1",
              style: TextStyle(
                color: AppColor.secondPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
                shape: BoxShape.circle
              //borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(
              child: Text(
                "+",
                style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
