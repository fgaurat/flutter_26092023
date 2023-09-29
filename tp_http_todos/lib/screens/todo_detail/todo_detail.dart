import 'package:flutter/material.dart';
import 'package:tp_http_todos/models/todo.dart';

class TodoDetail extends StatelessWidget {
  static String route = "/detail";
  final Todo todo;
  const TodoDetail({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoDetail'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(todo.title, style: const TextStyle(fontSize: 45)),
          Text("${todo.id}", style: const TextStyle(fontSize: 25)),
          Text("${todo.completed}", style: const TextStyle(fontSize: 25)),
        ],
      ),
    );
  }
}
