import 'package:flutter_application_1/controller/example_controller.dart';
import 'package:get/get.dart';

class ExampleBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ExampleController>(() => ExampleController());
  } 

}