import 'package:flutter_application_1/controller/splashscreen_controller.dart';
import 'package:get/get.dart';

class SplashscreenBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SplashscreenController>(() => SplashscreenController());
  } 

}   