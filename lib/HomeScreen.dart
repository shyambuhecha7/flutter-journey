import 'package:flutter/material.dart';
import 'package:my_first_project/GridScreen.dart';
import 'package:my_first_project/components/custom_button.dart';
import 'package:my_first_project/components/custom_text_field.dart';

import 'SignUpScreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

TextEditingController emailText = TextEditingController();
TextEditingController passwordText = TextEditingController();

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: Text("Signup Screen"),
            ),

            SizedBox(height: 12),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gridscreen()),
                );
              },
              child: Text("Grid List"),
            ),

            SizedBox(height: 12),

            Custombutton(
              text: "Custom Button",
              onPress: () {},
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            ),

            CustomTextField(
              hint: "Enter Email",
              icon: Icons.email,
              inputType: TextInputType.emailAddress,
              isPassword: false,
              controller: emailText,
            ),
            CustomTextField(
              hint: "Enter Password",
              icon: Icons.password,
              inputType: TextInputType.visiblePassword,
              isPassword: true,
              controller: passwordText,
            ),

            Custombutton(text: "Show Input Data", onPress: (){
              print("Email : ${emailText.text}");
              print("Password : ${passwordText.text}");
            }, padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8))
          ],
        ),
      ),
    );
  }
}
