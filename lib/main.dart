import 'package:flutter/material.dart';
import 'package:my_first_project/SampleScreen.dart';
import 'package:my_first_project/SignUpScreen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    const String appName = "My First App";
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      home: SignupScreen()

    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          Icon(Icons.star, color: Colors.red[500], size: 24),
          const Text('410'),
        ],
      ),
    );
  }
}
