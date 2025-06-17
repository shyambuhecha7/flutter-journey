import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_first_project/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homescreen(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Image.asset('assets/images/app_logo.png',width: 100, height: 100,fit: BoxFit.cover,)),
      ),
    );
  }
}
