import 'package:flutter/material.dart';
import 'package:hello_world/counter_increment.dart';
import 'package:hello_world/counter_value.dart';

class CounterRootState extends StatefulWidget {
  const CounterRootState({Key? key}) : super(key: key);

  @override
  State<CounterRootState> createState() => _CounterRootStateState();
}

class _CounterRootStateState extends State<CounterRootState> {
  int _cpt = 0;

  _increment() {
    setState(() {
      _cpt++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CounterIncrement(incClick: _increment),
        CounterValue(cpt: _cpt)
      ],
    );
  }
}
