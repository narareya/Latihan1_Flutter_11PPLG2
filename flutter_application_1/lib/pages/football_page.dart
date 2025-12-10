import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/football_controller.dart';
import 'package:flutter_application_1/pages/football_responsive/football.dart';
import 'package:flutter_application_1/pages/football_responsive/football_wide.dart';
import 'package:get/get.dart';

class FootballPage extends StatelessWidget {
  FootballPage({super.key});

  final footballController = Get.find<FootballController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          footballController.updateLayout(constraints);
          return Obx(() => footballController.isMobile.value ? FootballPlayer() : FootballWide());
        }),
    );
  }
}