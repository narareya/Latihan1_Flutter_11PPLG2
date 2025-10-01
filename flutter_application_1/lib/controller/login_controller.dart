import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    if (usernameController.text.toString() == "admin" && passwordController.text.toString() == "admin") {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString("username", usernameController.text.toString());
      Get.offAllNamed(AppRoutes.mainPage);
    } else {
      Get.snackbar("Error", "Username atau Password salah");
    }
  }
  
  void logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove("username");
    Get.offAllNamed(AppRoutes.splashPage);
  }
}