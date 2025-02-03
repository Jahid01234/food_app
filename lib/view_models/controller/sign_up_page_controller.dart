import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignUpPageController extends GetxController{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RxBool obscureText1 = true.obs;
  RxBool obscureText2 = true.obs;
}