import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/editplayer_controller.dart';
import 'package:flutter_application_1/widget/widget_component.dart';
import 'package:get/get.dart';

class EditPlayerPage extends StatelessWidget {
  EditPlayerPage({super.key});

  EditplayerController editplayerController = Get.put(EditplayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Player"),),
      body: Column(
        children: [
          InputField(
            input: "Nama", 
            controller: editplayerController.nameController, 
            isPassword: false
          ),
          InputField(
            input: "Position", 
            controller: editplayerController.positionController, 
            isPassword: false
          ),
          InputField(
            input: "Nomor", 
            controller: editplayerController.numberController, 
            isPassword: false
            ),
          
          Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            child: CustomButton(onPressed: () {
              editplayerController.updatePlayer();
            }, label: "Save"),
          )
        ],
      ),
    );
  }
}