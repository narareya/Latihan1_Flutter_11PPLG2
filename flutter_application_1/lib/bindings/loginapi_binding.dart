import 'package:flutter_application_1/controller/loginapi_controller.dart';
import 'package:get/get.dart';

class LoginAPIBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LoginAPIController>(() => LoginAPIController());
  } 

}