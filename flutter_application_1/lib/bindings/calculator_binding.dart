import 'package:flutter_application_1/controller/calculator_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class CalculatorBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<CalculatorController>(() => CalculatorController());
  }
  
}