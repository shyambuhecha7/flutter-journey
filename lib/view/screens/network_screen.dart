import 'package:flutter/material.dart';
import 'package:my_first_project/network/api_service.dart';

import '../../models/ApiResponse.dart';


class NetworkScreen extends StatefulWidget {
  const NetworkScreen({super.key});

  @override
  State<NetworkScreen> createState() => _NetworkScreenState();
}

class _NetworkScreenState extends State<NetworkScreen> {
  late Future<List<User>> futureUsers;

  @override
  void initState() {
    super.initState();

    futureUsers = ApiService().fetchUsers();
    print("Data : $futureUsers");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Api Screen")),
      body: FutureBuilder<List<User>>(
        future: futureUsers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (snapshot.hasData) {
            final users = snapshot.data;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("User List", style: TextStyle(fontSize: 18)),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: users?.length,
                    itemBuilder: (context, index) {
                      var user = users?[index];
                      return ListTile(
                        title: Text("${user?.firstName} ${user?.lastName}"),
                        subtitle: Text("${user?.email}"),
                        leading: CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage("${user?.avatar}"),
                          backgroundColor: Colors.transparent,
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          } else {
            return Center(child: Text("No data available"));
          }
        },
      ),
    );
  }
}
