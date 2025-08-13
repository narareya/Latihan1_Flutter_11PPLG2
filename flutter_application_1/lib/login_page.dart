import 'package:flutter/material.dart';
import 'package:flutter_application_1/register_page.dart';
import 'package:flutter_application_1/widget/widget_component.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String statusLogin = "loginstatus";
  String username = "narareya";
  String password = "123";
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(data: "Welcome to our application!"), // font, warna, bold
            
            Center(
              child: Image.asset(
                "assets/image1.jpeg",
                width: 200,
                height: 200,
              ),
            ),

            Text("Please fill username and password below"),

            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: TextField(
                controller: txtUsername, // username input
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

          
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              child: TextField(
                controller: txtPassword, // password input
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(onPressed: () {
                if (txtUsername.text == username && txtPassword.text == password) {
                  setState(() {
                    statusLogin = "Login Success";
                  });
                } else {
                  setState(() {
                    statusLogin = "Login Failed";
                  });
                }
              }, 
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              ),
            ),

            SizedBox(height: 20),
            Text(statusLogin),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => RegisterPage())
                      );
                    },
                    child: Text(
                    "Register here",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    ),
                  )  
              ),
            ),
          ],
        ),
      ),
    );
  }
}