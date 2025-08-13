import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widget_component.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? selectedGender;
  DateTime? selectedDate;
  

  @override

  void dispose() {
    nameController.dispose();
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register Page")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            InputField(input: "Nama", controller: nameController, isPassword: false,),
            InputField(input: "Username", controller: usernameController, isPassword: false,),
            InputField(input: "Email", controller: emailController, isPassword: false,),
            InputField(input: "Password", controller: passwordController, isPassword: true,),
            
            
            GenderSelect(selectedGender: selectedGender,
            onChanged: (value) {
              setState(() {
                selectedGender = value;
              });
            },),

            // Date Picker
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(selectedDate == null ? "Tanggal Lahir" : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"),
                  ElevatedButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: selectedDate ?? DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      ).then((date) {
                        if (date != null) {
                          setState(() {
                            selectedDate = date;
                          });
                        }
                      });
                    },
                    child: Text("Pilih Tanggal"),
                  ),
                ],
              )
            ),

            // Custom Button
            Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              child: CustomButton(onPressed: () {
                String email = emailController.text.trim();
                
                  if (!email.endsWith("@gmail.com")) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Email is not valid!"),
                      backgroundColor: Colors.red,)
                    );
                    return;
                  }
                
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Registration Successful!"),
                    backgroundColor: Colors.green,)
                  );
              }, label: "Register"),
            ),
            
          ],
          ),
      ),
    );
  }
}