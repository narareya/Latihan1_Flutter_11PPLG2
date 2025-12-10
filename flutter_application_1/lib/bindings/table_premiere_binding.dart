import 'package:flutter_application_1/controller/table_premiere_controller.dart';
import 'package:get/get.dart';

class TablePremiereBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(TablePremiereController());
  } 

}   