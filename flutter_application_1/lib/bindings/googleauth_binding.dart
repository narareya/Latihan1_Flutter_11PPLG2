import 'package:flutter_application_1/controller/googleauth_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class GoogleauthBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<GoogleauthController>(() => GoogleauthController());
  }
}