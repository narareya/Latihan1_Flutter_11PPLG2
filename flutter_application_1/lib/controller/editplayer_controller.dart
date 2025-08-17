import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/football_controller.dart';
import 'package:flutter_application_1/models/player_model.dart';
import 'package:get/get.dart';

class EditplayerController extends GetxController {
  final name = TextEditingController();
  final position = TextEditingController();
  final number = TextEditingController();
  final image = TextEditingController();

  void initializeWithPlayer(PlayerModel player) {
    name.text = player.name;
    position.text = player.position;
    number.text = player.number.toString();
    image.text = player.image;
  }

  void savePlayer(PlayerModel originalPlayer) {
    try {
      if (name.text.trim().isEmpty) {
        Get.snackbar('Error', 'Name cannot be empty');
        return;
      }
      if (position.text.trim().isEmpty) {
        Get.snackbar('Error', 'Position cannot be empty');
        return;
      }
      if (number.text.trim().isEmpty) {
        Get.snackbar('Error', 'Number cannot be empty');
        return;
      }

      int playerNumber;
      try {
        playerNumber = int.parse(number.text.trim());
      } catch (e) {
        Get.snackbar('Error', 'Please enter a valid number');
        return;
      }

      final FootballController footballController = Get.find<FootballController>();

      bool numberExists = footballController.players.any((p) => 
        p.number == playerNumber && p.name != originalPlayer.name);

      if (numberExists) {
        Get.snackbar('Error', 'This number is already taken by another player');
        return;
      }
      
      int playerIndex = footballController.players.indexWhere((p) => 
        p.name == originalPlayer.name &&
        p.position == originalPlayer.position &&
        p.number == originalPlayer.number
      );

      if (playerIndex != -1) {
        footballController.players[playerIndex] = PlayerModel(
          name: name.text.trim(), 
          position: position.text.trim(), 
          number: playerNumber, 
          image: originalPlayer.image,
        );

        Get.snackbar('Success', 'Player updated succesfully',
        backgroundColor: Colors.green,
        colorText: Colors.white);
        Get.back();
      } 
      
      else {
        Get.snackbar('Error', 'Player not found');
      }
    } catch (e) {
      Get.snackbar('Error', 'An error occured while saving: ${e.toString()}');
    }
  }

  @override
  void onClose() {
    name.dispose();
    position.dispose();
    number.dispose();
    image.dispose();
    super.onClose();
  }
}