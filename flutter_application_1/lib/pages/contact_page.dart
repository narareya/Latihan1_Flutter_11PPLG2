import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/contact_controller.dart';
import 'package:flutter_application_1/widget/widget_component.dart';
import 'package:get/get.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});
  final contactController = Get.find<ContactController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Page"),),
      body: Column(
        children: [
          InputField(input: "Insert Name", controller: contactController.nameController, isPassword: false),
          CustomButton(onPressed: () {
            contactController.addName();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Your name is succesfully added"))
            );
          }, label: "+"),

          Expanded(
            child: Obx(() {
              return ListView.builder(
              itemCount: contactController.names.length,
              itemBuilder: (context, index) {
                final names = contactController.names[index];
                return ListTile(
                  title: Text(names),
                  onLongPress: () {
                    showDialog(context: context, builder: (context) {
                      return AlertDialog(
                        title: Text("Update"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text("Update"),
                            )
                          ],
                        ),
                      );
                    });
                  },
                );
              });
            },) 
          )
        ],
      ),
    );
  }
}