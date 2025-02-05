import 'package:food_app_with_getx/resources/routes/routes_name.dart';
import 'package:food_app_with_getx/view/pages/product_details_page.dart';
import 'package:food_app_with_getx/view/pages/home_page.dart';
import 'package:food_app_with_getx/view/pages/login_page.dart';
import 'package:food_app_with_getx/view/pages/main_button_nav_page.dart';
import 'package:food_app_with_getx/view/pages/signup_page.dart';
import 'package:get/get.dart';

class AppRoutes{
  static final List<GetPage> page=[

    GetPage(
        name: RoutesName.singUpPage,
        page: ()=> const SignUpPage(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(seconds: 1)
    ),

    GetPage(
        name: RoutesName.loginPage,
        page: ()=> const LoginPage(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(seconds: 1)
    ),
    
    GetPage(
      name: RoutesName.mainButtonNavPage,
      page: ()=> const MainButtonNavPage(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(seconds: 3)
    ),

    GetPage(
        name: RoutesName.homePage,
        page: ()=> const HomePage(),
        transition: Transition.leftToRight,
        transitionDuration: const Duration(seconds: 3)
    ),

    GetPage(
        name: RoutesName.productDetailsPage,
        page: ()=> const ProductDetailsPage(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(seconds: 2)
    ),

  ];
}