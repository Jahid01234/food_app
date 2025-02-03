import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app_with_getx/resources/color/app_color.dart';
import 'package:food_app_with_getx/resources/routes/routes_name.dart';
import 'package:food_app_with_getx/view/widgets/custom_text_form_field.dart';
import 'package:food_app_with_getx/view_models/controller/login_page_controller.dart';
import 'package:get/get.dart';
import '../widgets/custom_elevated_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch the controller
    final controller = Get.find<LoginPageController>();

    return Obx(() =>
        Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: SingleChildScrollView(
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 1st Image part
                      Center(
                        child: Image.asset(
                          "assets/images/signin.png",
                          height: 250,
                        ),
                      ),
                      // 2nd Sign In Text part
                      const Text(
                        "Sign In",
                        style: TextStyle(
                          color: AppColor.primary,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30),
                      // 3rd TextForm field part
                      CustomTextFormField(
                        controller: controller.emailController,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        hintText: "Enter your email",
                        prefixIcon: Icons.email,
                      ),
                      const SizedBox(height: 10),
                      CustomTextFormField(
                        obscureText: controller.obscureText.value,
                        controller: controller.passwordController,
                        validator: (String? value){
                          if(value==null || value.isEmpty){
                            return "Please enter password";
                          }
                          else if(value.length<=8){
                            return " please enter 8 character";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        hintText: "Enter your password",
                        prefixIcon: Icons.lock,
                        suffixIcon: IconButton(
                          onPressed: (){
                            controller.obscureText.value = !controller.obscureText.value;
                          },
                          icon: Icon(
                            controller.obscureText.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColor.pale,
                          ),
                        ) ,
                      ),
                      const SizedBox(height: 20),
                      // 4th Elevated Button part
                      CustomElevatedButton(
                        onTap: (){
                          if(controller.formKey.currentState!.validate()){
                            Get.toNamed(RoutesName.mainButtonNavPage);
                          }
                        },
                        title: "Login In",
                        bgColor: AppColor.primary,
                      ),
                      const SizedBox(height: 10),
                      // 5th Forget button part
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Forget password? ',
                            style: const TextStyle(
                              color: AppColor.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'Reset Here',
                                style: const TextStyle(
                                    color: AppColor.orange
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = (){
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // 6th OR text part
                      const Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: AppColor.black,
                            ),
                          ),
                          Text("OR"),
                          Expanded(
                            child: Divider(
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // 7th Sign in Google Button part
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            // color: AppColors.primaryColor.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Sign in with Google",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      // 8th Sing Up screen button
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have an account? ",
                            style: const TextStyle(
                              color: AppColor.black,
                            ),
                            children: [
                              TextSpan(
                                  text: 'Sign Up',
                                  style: const TextStyle(
                                      color: AppColor.primary
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = (){
                                      Get.toNamed(RoutesName.singUpPage);
                                    }
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}

