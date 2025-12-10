import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/football_controller.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';

class FootballWide extends StatelessWidget {
  FootballWide({super.key});
  
  final footballController = Get.find<FootballController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Football Wide"),),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Obx(
          () => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // jumlah kolom (bisa kamu ubah jadi 2/4 sesuai selera)
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.7, // biar ukuran kotaknya proporsional
            ),
            itemCount: footballController.players.length,
            itemBuilder: (context, index) {
              var player = footballController.players[index];
              return ListTile(
                onTap: () {
                  print("player clicked :"+ footballController.players[index].name);
                  Get.toNamed(
                    AppRoutes.editplayerPage,
                    arguments: index,
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