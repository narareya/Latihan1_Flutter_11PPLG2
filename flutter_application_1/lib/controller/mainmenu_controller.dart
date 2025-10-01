import 'package:flutter/material.dart';
import 'package:flutter_application_1/fragments/calculator_fragment.dart';
import 'package:flutter_application_1/fragments/player_fragment.dart';
import 'package:flutter_application_1/fragments/profile_fragment.dart';
import 'package:get/get.dart';

class MainmenuController extends GetxController{

  var selectedIndex = 0.obs;

  final List<Widget> pages = [
    CalculatorFragment(),
    PlayerFragment(),
    ProfileFragment(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}