import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridscreen extends StatefulWidget {
  const Gridscreen({super.key});

  @override
  State<Gridscreen> createState() => _GridscreenState();
}

class _GridscreenState extends State<Gridscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid Layout Screen")),
      body: GridView.count(crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: [
          Container(width : 100, height: 100, color: Colors.blue),
          Container(width : 100, height: 100, color: Colors.blue),
          Container(width : 100, height: 100, color: Colors.blue),
          Container(width : 100, height: 100, color: Colors.blue),
          Container(width : 100, height: 100, color: Colors.blue),
          Container(width : 100, height: 100, color: Colors.blue),

        ],),
    );
  }
}
