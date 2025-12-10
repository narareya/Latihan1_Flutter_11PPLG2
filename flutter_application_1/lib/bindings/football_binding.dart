import 'package:flutter_application_1/controller/football_controller.dart';
import 'package:get/get.dart';

class FootballBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<FootballController>(() => FootballController());
  } 

}