import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginPageController extends GetxController{
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RxBool obscureText = true.obs;
}