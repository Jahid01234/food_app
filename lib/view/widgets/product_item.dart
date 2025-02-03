import 'package:flutter/material.dart';
import 'package:food_app_with_getx/resources/color/app_color.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final String calory;
  final String price;
  final String image;

  const ProductItem({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.calory,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: AppColor.black.withOpacity(0.03),
                blurRadius: 6,
                spreadRadius: 6,
                offset: const Offset(0, 3),
            ),
          ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox( height: 10),
                Wrap(
                  children: [
                    Text(
                      description,
                      style: const TextStyle(
                        color: AppColor.grey
                      ),
                    ),
                  ],
                ),
                const SizedBox( height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset("assets/images/fire.png"),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      calory,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: AppColor.secondPrimary,
                     ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "\$$price",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                 ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            flex: 1,
            child: Image.asset("assets/images/$image"),
          ),
        ],
      ),
    );
  }
}
