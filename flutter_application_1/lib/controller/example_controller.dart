import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleController extends GetxController {
  var isMobile = true.obs;

  void updateLayout(BoxConstraints constrains) {
    print("Max width: ${constrains.maxWidth}");
    isMobile.value = constrains.maxWidth < 800;
  }
}