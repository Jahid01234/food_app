import 'package:flutter/material.dart';
import 'package:food_app_with_getx/resources/color/app_color.dart';
import 'package:food_app_with_getx/resources/routes/app_routes.dart';
import 'package:food_app_with_getx/resources/routes/routes_name.dart';
import 'package:food_app_with_getx/view_models/bindings/controller_binding.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.singUpPage,
      getPages: AppRoutes.page,
      initialBinding: ControllerBinding(),
      theme: ThemeData(
        primaryColor: AppColor.primary,
        scaffoldBackgroundColor: AppColor.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.white,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            color: AppColor.black,
          ),
        ),
      ),
    );
  }
}


