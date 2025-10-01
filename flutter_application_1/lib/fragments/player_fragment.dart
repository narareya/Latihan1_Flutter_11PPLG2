import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/football_controller.dart';

import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';

class PlayerFragment extends StatelessWidget {
  final FootballController footballController = Get.put(FootballController());
  PlayerFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Pemain")),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Obx(
          () => ListView.separated(
            separatorBuilder:(context, index) => const SizedBox(height: 15,),
            itemCount: footballController.players.length,
            itemBuilder: (context, index) {
              var player = footballController.players[index];
              return ListTile(
                onTap: () {
                  Get.toNamed(
                    AppRoutes.editplayerPage,
                    arguments: player,
                  );
                },
                leading: Image.asset(
                  player.image,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
                title: Text(
                  player.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                subtitle: Text(
                  "${player.position} • No. ${player.number}",
                  style: const TextStyle(fontSize: 16, color: Colors.grey),),
              );
            },
          ),
        ),
      ),
    );
  }
}
