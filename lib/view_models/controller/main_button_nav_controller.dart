import 'package:get/get.dart';

class MainButtonNavController extends GetxController{
  RxInt tabIndex = 0.obs;
  RxList iconList = [
    "assets/icons/home.svg",
    "assets/icons/account.svg"
  ].obs;

}