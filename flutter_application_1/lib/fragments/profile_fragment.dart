import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/googleauth_controller.dart';
import 'package:flutter_application_1/controller/login_controller.dart';
import 'package:flutter_application_1/widget/widget_component.dart';
import 'package:get/get.dart';

class ProfileFragment extends StatelessWidget {
  ProfileFragment({super.key});
  final loginController = Get.find<LoginController>();
  final authController = Get.find<GoogleauthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile User")),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: authController.photoURL.value.isNotEmpty
                ? NetworkImage(authController.photoURL.value)
                : const AssetImage("assets/profile.png") as ImageProvider,
            ),
            const SizedBox(height: 20),
            Text(
                authController.displayName.value.isNotEmpty ? authController.displayName.value : "Guest user",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),

              // Email / Bio
              Text(
                authController.email.value.isNotEmpty ? authController.email.value : "No Email",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),


              CustomButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: "Konfirmasi Logout",
                    middleText: "Apakah kamu yakin ingin logout?",
                    textConfirm: "Ya",
                    textCancel: "Tidak",
                    confirmTextColor: Colors.white,
                    onConfirm: () {
                      authController.signOut();
                      Get.back(); // Tutup dialog setelah logout
                    },
                    onCancel: () {},
                  );
                }, label: "Logout")
          ],
        )
        
      ),
    );
  }
}