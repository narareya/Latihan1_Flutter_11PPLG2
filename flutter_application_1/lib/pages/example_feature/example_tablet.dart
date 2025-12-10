import 'package:flutter/material.dart';

class ExampleWideScreen extends StatelessWidget {
  const ExampleWideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ini tablet layout"),),
      body: Center(child: Text("ini contoh wide screen layout"),),
    );
  }
}