import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = ['Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras','Shyam', 'Sagar', 'Darshan', "Akshay", 'Paras'];

    return Scaffold(
      appBar: AppBar(
        title: Text("ListTile Screen", style: TextStyle(color: Colors.white)),
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
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    tileColor: Colors.amberAccent,
                    leading: Icon(Icons.person),
                    title: Text(arrNames[index],style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    iconColor: Colors.black,
                    subtitle: Text('${arrNames[index]} is a Developer'),
                    trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo)),
                  ),
                );
              },
              scrollDirection: Axis.vertical,
              itemCount: arrNames.length,
            ),
          ),

        ],
      ),
    );
  }
}
