import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile User")),
      body: const Center(
        child: Text(
          "This is profile page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}