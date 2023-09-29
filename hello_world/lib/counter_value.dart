import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class CounterValue extends StatelessWidget {
  final int cpt;
  const CounterValue({Key? key, required this.cpt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    developer.log("build CounterValue");
    return Text("cpt: $cpt");
  }
}
