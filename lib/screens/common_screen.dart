import 'package:flutter/material.dart';

class CommonScreen extends StatefulWidget {
  const CommonScreen({super.key});

  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
  var count = 0;
  var isOn = false;


  void toggleSwitch(bool value){
    setState(() {
      isOn = value;
      print("isOn : $isOn");

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Common Screen")),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(12),
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text("Counter : $count"),

          ElevatedButton(onPressed: (){
            count++;
            setState(() {

            });
          }, child: Text("Increase")),

          Switch(value: isOn, onChanged: toggleSwitch),

        ],),
      ),
    );
  }
}
