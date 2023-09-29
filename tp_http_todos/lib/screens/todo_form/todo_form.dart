import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:convert' as convert;
import 'package:go_router/go_router.dart';

import "dart:developer" as developer;

class TodoForm extends StatefulWidget {
  static String route = "/add";
  const TodoForm({Key? key}) : super(key: key);

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // var title = TextEditingController();
    String todoTitle = "";

    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoForm'),
      ),
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextFormField(
                  onSaved: (value) => todoTitle = value!,
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: "Todo title"),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  // Validate returns true if the form is valid, or false otherwise.

                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                    String url = dotenv.get("URL_TODOS", fallback: "");
                    if (Platform.isAndroid) {
                      url = dotenv.get("ANDROID_URL_TODOS", fallback: "");
                    }
                    var response = await http.post(Uri.parse(url),
                        body: convert.jsonEncode({
                          "title": todoTitle,
                          "completed": false,
                          "userId": 0
                        }),
                        headers: {"Content-type": "application/json"});

                    if (context.mounted) {
                      context.pop();
                    }
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          )),
    );
  }
}
