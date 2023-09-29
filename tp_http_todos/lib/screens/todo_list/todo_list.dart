import 'dart:io';
import 'package:go_router/go_router.dart';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tp_http_todos/models/todo.dart';
import 'dart:convert' as convert;

import 'package:tp_http_todos/screens/todo_detail/todo_detail.dart';
import 'package:tp_http_todos/screens/todo_form/todo_form.dart';
import 'package:tp_http_todos/services/todos_services.dart';

class TodoList extends StatefulWidget {
  static String route = "/";
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  String url = dotenv.get("URL_TODOS", fallback: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(TodoForm.route);
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('TodoList'),
      ),
      body: RefreshIndicator(
          onRefresh: () async {
            setState(() {});
          },
          child: FutureBuilder<List<Todo>>(
            future: TodoService.fetchTodos(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          onTap: () {
                            context.push(TodoDetail.route,
                                extra: snapshot.data?[index]);
                          },
                          title: Text(snapshot.data?[index].title ?? ""));
                    });
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
