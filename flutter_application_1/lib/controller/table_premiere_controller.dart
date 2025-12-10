import 'dart:convert';

import 'package:flutter_application_1/models/table_premiere_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class TablePremiereController extends GetxController {
  var isLoading = false.obs;
  var tableStandings = <Table>[].obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchAPITablePremiere();
  }
  
  Future<void> fetchAPITablePremiere() async {
    const url = "https://www.thesportsdb.com/api/v1/json/3/lookuptable.php?l=4328&s=2025-2026";
    
    try {
      // code berpotensi catch 
      isLoading.value = true;
      final response = await http.get(Uri.parse(url));
      print("status code "+ response.statusCode.toString());
      print("json response "+ response.body.toString());

      if(response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List standings = data['table'];
        tableStandings.assignAll(standings.map((e) => Table.fromJson(e),).toList());
      } else {
        Get.snackbar("Error", "Message error dari BE");
      }

    } catch (e) {
      // e = exception, tampilkan message error
      Get.snackbar("error", e.toString());
    }
    isLoading.value = false;
  }
}