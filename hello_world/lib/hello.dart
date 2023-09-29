import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  final String _value;

  const Hello(this._value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            _value,
            style: const TextStyle(fontSize: 25),
          ),
          const Icon(Icons.bolt),
          const Text("Hello 02")
        ],
      ),
    );
  }
}
