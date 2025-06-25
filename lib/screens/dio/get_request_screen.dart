import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/models/ApiResponse.dart';

import '../../components/custom_button.dart';

class GetRequestScreen extends StatefulWidget {
  const GetRequestScreen({super.key});

  @override
  State<GetRequestScreen> createState() => _GetRequestScreenState();
}

class _GetRequestScreenState extends State<GetRequestScreen> {
  List<User>? userList;
  bool isLoading = false;
  bool isDataFetched = false;

  void getUserData() async {
    setState(() {
      isLoading = true;
      isDataFetched = true;
    });
    try {
      final response = await Dio().get('https://reqres.in/api/users?page=2');

      setState(() {
        if (response.statusCode == 200) {
          userList = ApiResponse.fromJson(response.data).data;
        } else {
          userList = [];
        }
      });

    } catch (e) {
      setState(() {
        userList = [];
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    // getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dio Library"), centerTitle: true),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Custombutton(
              text: "GET API CALL",
              onPress: () {
                getUserData();
              },
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),

            Expanded(
              child:
                  isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : isDataFetched
                      ? ListView.builder(
                        itemCount: userList?.length,
                        itemBuilder: (context, index) {
                          final user = userList?[index];
                          return ListTile(
                            title: Text("${user?.firstName} ${user?.lastName}"),
                            subtitle: Text("${user?.email}"),
                          );
                        },
                      )
                      : Center(
                        child: Text("Press the button to fetch user data"),
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
