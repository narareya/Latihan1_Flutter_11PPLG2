import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/example_controller.dart';
import 'package:flutter_application_1/pages/example_feature/example_mobile.dart';
import 'package:flutter_application_1/pages/example_feature/example_tablet.dart';
import 'package:get/get.dart';

class ExamplePage extends StatelessWidget {
  ExamplePage({super.key});

  final exampleController = Get.find<ExampleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          exampleController.updateLayout(constraints);
          return Obx(() => exampleController.isMobile.value ? ExampleMobile() : ExampleWideScreen());
        }),
    );
  }
}