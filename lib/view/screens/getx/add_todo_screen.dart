import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_project/view/components/custom_text_field.dart';
import 'package:my_first_project/view/controllers/todo_controller.dart';

import '../../components/custom_button.dart';

class AddTodoScreen extends StatelessWidget {
  AddTodoScreen({super.key});

  final TodoController controller = Get.find();
  final TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add ToDo")),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextField(
              hint: "Enter Todo Name",
              icon: Icons.task_alt_rounded,
              inputType: TextInputType.text,
              controller: taskController,
            ),

            SizedBox(height: 24),

            Custombutton(
              text: "Add Todo",
              onPress: () {
                controller.addTodo(taskController.text.trim());
                Get.back();//navigate back
                Get.snackbar("Success", "ToDo Added!",snackPosition: SnackPosition.BOTTOM);
              },
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          ],
        ),
      ),
    );
  }
}
