import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_with_getx/resources/color/app_color.dart';
import 'package:food_app_with_getx/view/pages/product_details_page.dart';
import 'package:food_app_with_getx/view/pages/home_page.dart';
import 'package:food_app_with_getx/view_models/controller/main_button_nav_controller.dart';
import 'package:get/get.dart';

class MainButtonNavPage extends StatelessWidget {
  const MainButtonNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch the controller
    final controller = Get.find<MainButtonNavController>();

    return Obx(() =>
        Scaffold(
          body: IndexedStack(
            index: controller.tabIndex.value,
            children: const [
              HomePage(),
              ProductDetailsPage()
            ],
          ),
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            backgroundColor: AppColor.background,
            backgroundGradient: AppColor.gradientFullPrimary,
            itemCount: controller.iconList.length,
            tabBuilder: (int index, bool isActive){
              final color = isActive ? Colors.blue : Colors.grey;
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(
                      controller.iconList[index],
                      height: 24,
                      color: color,
                    ),
                  ),
                ],
              );
            },
            activeIndex: controller.tabIndex.value,
            onTap: (index) {
              controller.tabIndex.value = index;
            },
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.softEdge,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.secondPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            onPressed: () {  },
            child: SizedBox(
              height: 25,
              width: 25,
              child: SvgPicture.asset(
                  "assets/icons/cart.svg",
                  color: AppColor.primary,
              ),
            ),
          ),
        ),
    );
  }
}
