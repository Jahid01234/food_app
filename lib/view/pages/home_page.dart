import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_with_getx/data/model/product_model.dart';
import 'package:food_app_with_getx/resources/color/app_color.dart';
import 'package:food_app_with_getx/resources/routes/routes_name.dart';
import 'package:food_app_with_getx/view/widgets/category_tab.dart';
import 'package:food_app_with_getx/view/widgets/product_item.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _getHeaderSection(),
                const SizedBox(height: 20),
                _getSearchBoxSection(),
                const SizedBox(height: 30),
                _buildCategorySection(),
                const SizedBox(height: 30),
                _buildPopularSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategorySection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Category",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        CategoryTab(),
      ],
    );
  }

  Widget _getSearchBoxSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: AppColor.black.withOpacity(0.03),
                      blurRadius: 6,
                      spreadRadius: 6,
                      offset: const Offset(0, 0),
                  ),
                ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search food...",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    "assets/icons/search.svg",
                    height: 30,
                    width: 30,
                    color: AppColor.grey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: AppColor.black.withOpacity(0.03),
                    blurRadius: 6,
                    spreadRadius: 6,
                    offset: const Offset(0, 0),
                ),
              ],
          ),
          child: SvgPicture.asset(
            "assets/icons/filter.svg",
            height: 30,
            width: 30,
          ),
        ),
      ],
    );
  }

  Widget _getHeaderSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey, Nirjon",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Let's find quality food",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            "assets/images/jahid.jpg",
            height: 40,
            width: 40,
          ),
        ),
      ],
    );
  }

  Widget _buildPopularSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Popular",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "See all",
              style: TextStyle(
                color: AppColor.black.withOpacity(0.7),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Column(
          children: List.generate(
            productsModel.length, (index) {
            var product = productsModel[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(
                  RoutesName.productDetailsPage,
                  // arguments: {
                  //   'data': product,
                  // },
                );
              },
              child: ProductItem(
                id: product['id'],
                title: product['title'],
                description: product['description'],
                calory: product['calories'],
                price: product['price'],
                image: product['image'],
              ),
            );
           },
          ),
        ),
      ],
    );
  }
}
