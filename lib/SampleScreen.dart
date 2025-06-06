import 'package:flutter/material.dart';

import 'main.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  var emailText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TitleSection(name: 'India', location: 'welcome to india'),

            TextButton(onPressed: () {}, child: Text("Text Button")),

            ElevatedButton(
              onPressed: () {},

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 8),
                  Text("Elevated Button"),
                ],
              ),
            ),

            OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                controller: emailText,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // prefixText: "+91",
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.email),
                  ),
                  hintText: "Enter your email",
                  suffixIcon: IconButton(
                    onPressed: () {
                      emailText.text = '';
                    },
                    icon: Icon(Icons.cancel, color: Colors.black),
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    print(emailText.text.toString());
                  },
                  child: Text("Submit"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
