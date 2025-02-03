import 'package:flutter/material.dart';
import 'package:food_app_with_getx/resources/color/app_color.dart';

class CategoryItem extends StatelessWidget {
  final bool isActive;
  final String image;
  final String title;
  final VoidCallback onTap;

  const CategoryItem({
    super.key,
    required this.isActive,
    required this.image,
    required this.title,
    required this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    if(isActive){
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 140,
          decoration: BoxDecoration(
            color: AppColor.primary,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: AppColor.primary.withOpacity(0.8),
              width: 2,
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset("assets/images/$image"),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColor.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: AppColor.primary.withOpacity(0.8),
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset("assets/images/$image"),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColor.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
