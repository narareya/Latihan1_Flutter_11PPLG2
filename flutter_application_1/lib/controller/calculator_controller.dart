import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CalculatorController extends GetxController {
  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();
  var txtHasil = "".obs;

  void tambah() {
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasilJumlah = angka1 + angka2;
    txtHasil.value = hasilJumlah.toString();
  }

  void kurang() {
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasilKurang = angka1 - angka2;
    txtHasil.value = hasilKurang.toString();
  }

  void kali() {
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasilKali = angka1 * angka2;
    txtHasil.value = hasilKali.toString();
  }

  void bagi() {
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    if (angka2 != 0) {
      double hasilBagi = angka1 / angka2;
      txtHasil.value = hasilBagi.toString();
    } else {
      txtHasil.value = "Tidak bisa dibagi dengan nol";
    }
  }

  void clear() {
    txtAngka1.clear();
    txtAngka2.clear();
    txtHasil.value = "";
  }
}