import 'package:flutter/material.dart';

class Listscreen extends StatelessWidget {
  const Listscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = ['Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras'];

    return Scaffold(
      appBar: AppBar(
        title: Text("List Screen", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.navigate_before, size: 24, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      child: Text(
                        arrNames[index],
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                );
              },
              scrollDirection: Axis.vertical,
              itemCount: arrNames.length,
            ),
          ),

          Divider(height: 12,thickness: 2,color: Colors.black),

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      child: Text(
                        arrNames[index],
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: arrNames.length,
            ),
          ),
        ],
      ),
    );
  }
}
