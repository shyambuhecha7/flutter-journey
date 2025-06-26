import 'package:get/get.dart';
import 'package:my_first_project/models/todo.dart';

class TodoController extends GetxController{

  var todos = <ToDo>[].obs;

  void addTodo(String value){
    todos.add(ToDo(title: value));
  }

  void removeTodo(int index){
    todos.removeAt(index);
  }

  void toggleDone(int index){
    var todo = todos[index];
    todo.isDone = !todo.isDone;
    todos[index] = todo;
  }
}