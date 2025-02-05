import 'package:get/get.dart';

class ProductDetailsController extends GetxController{
  //get data from passing params
  var params = Get.arguments;
  var data = {}.obs;

  @override
  void onInit() {
    if (params != null ) {
      data.value = params["data"];
    }
    super.onInit();
  }
}