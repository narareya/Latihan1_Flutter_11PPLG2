import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/football_controller.dart';
import 'package:flutter_application_1/models/player_model.dart';
import 'package:get/get.dart';

class EditplayerController extends GetxController {
  final FootballController footballController = Get.find<FootballController>();
  final int? index;
  late TextEditingController nameController;
  late TextEditingController positionController;
  late TextEditingController numberController;
  late TextEditingController imageController;

  EditplayerController([this.index]);

  void onInit() {
    super.onInit();

    if (index != null) {
      nameController = TextEditingController(
        text: footballController.players[index!].name,
      );
      positionController = TextEditingController(
        text: footballController.players[index!].position,
      );
      numberController = TextEditingController(
        text: footballController.players[index!].number.toString(),
      );
      imageController = TextEditingController(
        text: footballController.players[index!].image,
      );
    }
    else {
      nameController = TextEditingController();
      positionController = TextEditingController();
      numberController = TextEditingController();
      imageController = TextEditingController();
    }
  }

  void updatePlayer() {
    if (index != null) {
      footballController.updatePlayer(index!, PlayerModel(
        name: nameController.text, 
        position: positionController.text, 
        number: int.parse(numberController.text), 
        image: imageController.text));
        Get.back();
    }
  }
}