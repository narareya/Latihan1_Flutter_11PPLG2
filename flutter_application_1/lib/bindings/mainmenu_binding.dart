import 'package:flutter_application_1/controller/editplayer_controller.dart';
import 'package:flutter_application_1/controller/football_controller.dart';
import 'package:flutter_application_1/controller/mainmenu_controller.dart';
import 'package:get/get.dart';

class MainmenuBinding extends Bindings {
  @override
  void dependencies() {
    // home controller, historycontroller, profilecontroller
    Get.lazyPut<FootballController>(() => FootballController());
    Get.lazyPut<EditplayerController>(() => EditplayerController());
    Get.lazyPut<MainmenuController>(() => MainmenuController());
  }

}