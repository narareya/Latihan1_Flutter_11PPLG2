import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/login_controller.dart';
import 'package:flutter_application_1/widget/widget_component.dart';
import 'package:get/get.dart';

class ProfileFragment extends StatelessWidget {
  ProfileFragment({super.key});
  final loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile User")),
      body: Center(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/profile.png"),
            ),
            const SizedBox(height: 20),
            const Text(
                "Esta Janitra Lituhayu",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),

              // Email / Bio
              const Text(
                "11 PPLG 2",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),


              CustomButton(
                onPressed: () {
                  loginController.logout();
                }, label: "Logout")
          ],
        )
        
      ),
    );
  }
}