import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/splashscreen_controller.dart';
import 'package:get/get.dart';

class SplashscreenPage extends StatelessWidget {
  SplashscreenPage({super.key});
  final splashController = Get.find<SplashscreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Splashscreen Page"),
          ],
        ),
      ),
    );
  }
}