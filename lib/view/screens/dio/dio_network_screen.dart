import 'package:flutter/material.dart';
import 'package:my_first_project/view/screens/dio/post_request_screen.dart';

import '../../components/custom_button.dart';
import 'get_request_screen.dart';

class DioNetworkScreen extends StatefulWidget {
  const DioNetworkScreen({super.key});

  @override
  State<DioNetworkScreen> createState() => _DioNetworkScreenState();
}

class _DioNetworkScreenState extends State<DioNetworkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dio Library", textAlign: TextAlign.center)),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Custombutton(
              text: "GET",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GetRequestScreen()),
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            Custombutton(
              text: "POST",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostRequestScreen()),
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          ],
        ),
      ),
    );
  }
}
