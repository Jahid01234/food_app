import 'package:food_app_with_getx/view_models/controller/login_page_controller.dart';
import 'package:food_app_with_getx/view_models/controller/main_button_nav_controller.dart';
import 'package:food_app_with_getx/view_models/controller/sign_up_page_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings{
  @override
  void dependencies() {
     Get.put(MainButtonNavController());
     Get.put(LoginPageController());
     Get.put(SignUpPageController());
  }

}