import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/editplayer_controller.dart';
import 'package:flutter_application_1/models/player_model.dart';
import 'package:flutter_application_1/widget/widget_component.dart';
import 'package:get/get.dart';

class EditPlayerPage extends StatelessWidget {
  final PlayerModel player;
  EditPlayerPage({super.key, required this.player});

  final EditplayerController editplayerController = Get.put(EditplayerController());

  @override
  Widget build(BuildContext context) {
    editplayerController.initializeWithPlayer(player);
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Player"),),
      body: Column(
        children: [
          InputField(input: "Nama", controller: editplayerController.name, isPassword: false),
          InputField(input: "Position", controller: editplayerController.position, isPassword: false),
          InputField(input: "Nomor", controller: editplayerController.number, isPassword: false),
          Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            child: CustomButton(onPressed: () {
              editplayerController.savePlayer(player);
            }, label: "Save"),
          )
        ],
      ),
    );
  }
}