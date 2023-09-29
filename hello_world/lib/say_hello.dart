import 'package:flutter/material.dart';

class SayHello extends StatefulWidget {
  const SayHello({Key? key}) : super(key: key);

  @override
  State<SayHello> createState() => _SayHelloState();
}

class _SayHelloState extends State<SayHello> {
  String name = "";
  _setName(value) {
    setState(() {
      name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Say hello', style: TextStyle(fontSize: 25)),
        const Text('Your name:'),
        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Your name',
          ),
          onSubmitted: _setName,
        ),
        if (name.isNotEmpty) Text('Hello $name'),
      ],
    );
  }
}
