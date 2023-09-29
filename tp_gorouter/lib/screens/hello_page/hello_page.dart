import 'package:flutter/material.dart';

class HelloPage extends StatelessWidget {
  static String route = "/hello/:the_name";
  final String name;
  const HelloPage({Key? key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello $name"),
      ),
      body: Column(
        children: [
          Text('Hello $name'),
        ],
      ),
    );
  }
}
