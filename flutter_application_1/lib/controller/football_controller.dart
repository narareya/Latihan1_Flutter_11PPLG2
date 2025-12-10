import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/player_model.dart';
import 'package:get/get.dart';

class FootballController extends GetxController {
  var isMobile = true.obs;

  var players = <PlayerModel> [
    PlayerModel(name: "Cristiano Ronaldo", position: "Winger", number: 7, image: "assets/cristiano.jpg"),
    PlayerModel(name: "Lionel Messi", position: "Playmaker", number: 10, image: "assets/messi.jpg"),
    PlayerModel(name: "David Beckham", position: "Winger", number: 12, image: "assets/david.jpeg"),
    PlayerModel(name: "Aaron Clapham", position: "Midfielder", number: 8, image: "assets/aaron.jpeg"),
    PlayerModel(name: "Kang Min-Soo", position: "Defender", number: 20, image: "assets/minsoo.jpg"),
  ].obs;

  void updatePlayer(int index, PlayerModel player) {
    players[index] = player;
  }

  void updateLayout(BoxConstraints constraints) {
    print("Max width: ${constraints.maxWidth}");
    isMobile.value = constraints.maxWidth < 800;
  }
}