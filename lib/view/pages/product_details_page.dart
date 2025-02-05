import 'package:flutter/material.dart';
import 'package:food_app_with_getx/resources/color/app_color.dart';
import 'package:food_app_with_getx/view/widgets/backward_button.dart';
import 'package:food_app_with_getx/view/widgets/custom_quantity.dart';
import 'package:food_app_with_getx/view/widgets/get_icon.dart';
import 'package:get/get.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch the controller
    //final controller = Get.find<ProductDetailsController>();

    return Scaffold(
      appBar: AppBar(
        leading: const BackwardButton(
          image: "assets/icons/arrow-backward.svg",
        ),
        title:  const Text(
          "Burger Large Size",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: Get.width * 1,
                    height: Get.height * 0.43,
                    child: Image.asset(
                      "assets/images/product-background.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('assets/images/burger.png',
                          width: 400,
                          height: 200,
                        ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    _getProductInformation(),
                    const SizedBox(height: 30),
                    _getDetail()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getProductInformation(){
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             children: [
               GetIconWidget(
                 icon: "fire.png",
                 title: "44 calories",
               ),
               SizedBox(width: 15),
               GetIconWidget(
                 icon: "star.png",
                 title: "5.5",
               ),
             ],
           ),
           Text(
             "\$10",
             style: TextStyle(
               fontSize: 18,
               color: Colors.deepOrange,
               fontWeight: FontWeight.bold,
             ),
           ),
         ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GetIconWidget(
              icon: "clock.png",
              title: "20-30 mins",
            ),
            CustomQuantity()
          ],
        )
      ],
    );
  }

  Widget _getDetail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Information",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
         ),
        ),
        const SizedBox(height: 10,),
        Text(
          "Pizza is a dish of Italian origin consisting of a usually round, "
              "flat base of leavened wheat-based dough topped with tomatoes, "
              "cheese, and often various other ingredients, which is then baked "
              "at a high temperature, traditionally in a wood-fired oven",
          textAlign: TextAlign.justify,
          style: TextStyle(
              color: AppColor.black.withOpacity(0.5),
              height: 1.5,
          ),
        ),
      ],
    );
  }
}
