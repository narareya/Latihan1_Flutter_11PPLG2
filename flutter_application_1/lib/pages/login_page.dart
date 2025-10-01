import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/login_controller.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/widget/widget_component.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Center(
        child: Column(
          children: [
            InputField(input: "Username", controller: loginController.usernameController, isPassword: false),
            InputField(input: "Password", controller: loginController.passwordController, isPassword: true),

            CustomButton(onPressed: () {
              loginController.login();
            }, label: "Login"),
          ],
        ),
    )
    );
  }
}