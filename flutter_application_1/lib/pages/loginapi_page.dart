import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/googleauth_controller.dart';
import 'package:flutter_application_1/controller/loginapi_controller.dart';
import 'package:flutter_application_1/widget/widget_component.dart';
import 'package:get/get.dart';

class LoginAPIPage extends StatelessWidget {
  LoginAPIPage({super.key});
  final loginController = Get.find<LoginAPIController>();
  final authController = Get.find<GoogleauthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              InputField(input: "Username", controller: loginController.usernameController, isPassword: false),
              InputField(input: "Password", controller: loginController.passwordController, isPassword: true),

              Obx(() {
                return loginController.isLoading.value ? const CircularProgressIndicator() : 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(onPressed: () { loginController.login(); }, label: "Login"),
                    const SizedBox( height: 12,),
                    CustomButton(onPressed: () { authController.signInWithGoogle(); }, label: "Google Sign in"),
                  ],
                );
              })
            ],
          ),
        ),
    )
    );
  }
}