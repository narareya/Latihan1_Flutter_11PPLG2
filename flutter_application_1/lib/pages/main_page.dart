import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/mainmenu_controller.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  MainmenuController mainmenuController = Get.put(MainmenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: AppBar(title: Text("My Menu"),),
      body: mainmenuController.pages[mainmenuController.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        onTap: mainmenuController.changePage,
        currentIndex: mainmenuController.selectedIndex.value,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: "Player"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    ));
  }
}