import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_project/view/controllers/todo_controller.dart';
import 'package:my_first_project/view/screens/HomeScreen.dart';
import 'package:my_first_project/view/screens/splash_screen.dart';
import 'package:get/get.dart';
void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  //create controller in global
  final TodoController todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    const String appName = "Flutter Journey";
    //If we use GetX than Here use  GetMaterialApp Theme
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 18,fontWeight: FontWeight.w200),
          headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          centerTitle: true,
        ),
      ),
      title: appName,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
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
