import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/table_premiere_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TablePremierePage extends StatelessWidget {
  TablePremierePage({super.key});

  final controller = Get.find<TablePremiereController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Table Premiere"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(() {
          if (controller.isLoading.value) {
            return Center(child: CircularProgressIndicator(),);
          }

          return RefreshIndicator(
            child: ListView.builder(
            itemCount: controller.tableStandings.length,
            itemBuilder: (context, index) {
            final team = controller.tableStandings[index];
            return Card(
              child: ListTile(
                title: Text(team.strTeam),
                leading: CircleAvatar(backgroundImage: NetworkImage(team.strBadge), radius: 25,),
                subtitle: Text("D :"+team.intDraw + " W :" + team.intWin + " L :" + team.intLoss),
              ),
            );
          },), onRefresh: () async {
            await controller.fetchAPITablePremiere();
          });
        },),
      ),
    );
  }
}