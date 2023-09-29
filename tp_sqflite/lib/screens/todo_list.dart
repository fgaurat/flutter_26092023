import 'package:flutter/material.dart';
import 'package:tp_sqflite/models/todo.dart';
import 'package:tp_sqflite/models/todo_dao.dart';

import 'dart:developer' as developer;

import 'package:tp_sqflite/screens/todo_form.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  TodoDAO dao = TodoDAO();
  List<Todo> todoList = [];

  void _updateListView() async {
    await dao.open();
    dao.getTodoList().then((values) => setState(() {
          todoList = values;
        }));
  }

  @override
  void initState() {
    super.initState();
    _updateListView();
  }

  @override
  Widget build(BuildContext context) {
    developer.log("build");
    developer.log("$todoList");
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoList'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TodoForm()));
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(todoList[index].title));
            }),
      ),
    );
  }
}
