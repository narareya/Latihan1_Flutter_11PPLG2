import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/calculator_controller.dart';
import 'package:flutter_application_1/widget/widget_component.dart';
import 'package:get/get.dart';


class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});
  final CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),),
      body: Column(
        children: [
          InputField(input: "Angka 1", controller: calculatorController.txtAngka1, isPassword: false, isNumberOnly: true),
          InputField(input: "Angka 2", controller: calculatorController.txtAngka2, isPassword: false, isNumberOnly: true),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(onPressed: () {
                  calculatorController.tambah();
                }, label: "+"),

                SizedBox(width: 20),
            
                CustomButton(onPressed: () {
                  calculatorController.kurang();
                }, label: "-"),
              ],
            ),
          ),

          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(onPressed: () {
                  calculatorController.kali();
                }, label: "x"),
                SizedBox(width: 20),
                CustomButton(onPressed: () {
                  calculatorController.bagi();
                }, label: "/"),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(20),
            
            child: Obx(() {
              return Text("Hasil: ${calculatorController.txtHasil.value}");
            }),
          ),

          CustomButton(onPressed: () {
            calculatorController.clear();
          }, label: "Clear"),

          
        ],
      ),
    );
  }
}