import 'package:flutter/material.dart';
import 'package:my_first_project/components/custom_button.dart';
import 'package:my_first_project/components/custom_text_field.dart';
import 'package:my_first_project/models/dio/user_request.dart';
import 'package:my_first_project/network/user_api_service.dart';

class PostRequestScreen extends StatefulWidget {
  const PostRequestScreen({super.key});

  @override
  State<PostRequestScreen> createState() => _PostRequestScreenState();
}

class _PostRequestScreenState extends State<PostRequestScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  bool isLoading = false;
  String responseMessage = "";

  void createUser() async {

    if (nameController.text.trim().isEmpty || jobController.text.trim().isEmpty) {
      setState(() {
        responseMessage = "Please enter both name and job.";
      });
      return;
    }
    
    setState(() {
      responseMessage ="";
      isLoading =true;
    });
    try {
      final response = await UserApiService().createUser(
        UserRequest(
          name: nameController.text.trim(),
          job: jobController.text.trim(),
        ),
      );

      setState(() {
        responseMessage =
            "User ID: ${response.id ?? 'N/A'}\n"
            "Name: ${response.name}\n"
            "Job: ${response.job}\n"
            "Created At: ${response.createdAt}";
      });
    } catch (e) {
      setState(() {
        responseMessage = "Error : $e";
      });
    }finally{
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    jobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post Request"), centerTitle: true),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomTextField(
              hint: "Enter Name",
              icon: Icons.person,
              inputType: TextInputType.name,
              controller: nameController,
            ),

            SizedBox(height: 12),

            CustomTextField(
              hint: "Enter Job",
              icon: Icons.home,
              inputType: TextInputType.name,
              controller: jobController,
            ),

            isLoading
                ? CircularProgressIndicator()
                : Custombutton(
                  text: "Post - Create User",
                  onPress: createUser,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                ),
            SizedBox(height: 20),
            Text(responseMessage),
          ],
        ),
      ),
    );
  }
}
