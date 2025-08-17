import 'package:flutter_application_1/models/player_model.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/edit_player.dart';
import 'package:flutter_application_1/pages/football.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculatorPage, page: ()=> CalculatorPage()),
    GetPage(name: AppRoutes.footballPage, page: ()=> FootballPlayer()),
    GetPage(
      name: AppRoutes.editplayerPage, 
      page: () {
        final player = Get.arguments as PlayerModel;
        return EditPlayerPage(player: player);
      }),
  ];
}