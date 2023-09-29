import 'dart:convert';
import 'dart:io';
import 'dart:convert' as convert;

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:tp_http_todos/models/todo.dart';

// import 'package:tp_http_todos/services/todo_services.dart' as todoService

// TodoService.fetchTodos()

// fetchTodos()
class TodoService {
  static Future<List<Todo>> fetchTodos() async {
    String url = dotenv.get("URL_TODOS", fallback: "");
    List<Todo> lt = [];

    if (Platform.isAndroid) {
      url = dotenv.get("ANDROID_URL_TODOS", fallback: "");
    }
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List jsonTodos = convert.jsonDecode(response.body);
      lt = jsonTodos.map((m) => Todo.fromJson(m)).toList();
    }
    return lt;
  }
}
