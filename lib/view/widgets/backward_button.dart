import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BackwardButton extends StatelessWidget {
  final String image;
  final Color? color;

  const BackwardButton({
    super.key,
    required this.image,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {
        Get.back();
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 20,
        height: 20,
        child: SvgPicture.asset(image),
      ),
    );
  }
}
