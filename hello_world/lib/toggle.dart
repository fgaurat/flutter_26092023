import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class Toggle extends StatefulWidget {
  const Toggle({Key? key}) : super(key: key);

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool show = true;
  String label = 'Hide';
  _toggleShow() {
    developer.log('_toggleShow $show');

    setState(() {
      show = !show;
      label = show ? "Hide" : "Show";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Toggle', style: TextStyle(fontSize: 25)),
        TextButton(onPressed: _toggleShow, child: Text(label)),
        if (show) const Text("Hooooooo"),
      ],
    );
  }
}
