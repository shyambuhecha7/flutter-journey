import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_project/view/controllers/todo_controller.dart';
import 'package:my_first_project/view/screens/getx/add_todo_screen.dart';

class TodoListScreen extends StatelessWidget {
  TodoListScreen({super.key});

  //get instance from main.dart(global)
  final TodoController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo List")),
      body: Obx(() {
        return controller.todos.isEmpty ? Center(child: Text("Add Todo Here!"),) :

          ListView.builder(
          itemCount: controller.todos.length,
          itemBuilder: (context, index) {
            final todo = controller.todos[index];

            return ListTile(
              trailing: IconButton(
                onPressed: () {
                  controller.removeTodo(index);
                },
                icon: Icon(Icons.delete),
              ),
              title: Text(
                todo.title,
                style: TextStyle(
                  decoration:
                      todo.isDone
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                ),
              ),
              leading: Checkbox(
                value: todo.isDone,
                onChanged: (value) {
                  controller.toggleDone(index);
                },
              ),
            );
          },
        );
      }),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(()=>AddTodoScreen());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
