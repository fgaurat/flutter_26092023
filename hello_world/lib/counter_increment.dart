import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class CounterIncrement extends StatelessWidget {
  // final Function incClick;
  final VoidCallback incClick;

  const CounterIncrement({Key? key, required this.incClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    developer.log("build CounterIncrement");
    return ElevatedButton(onPressed: incClick, child: const Text('Increment'));
  }
}
