import 'package:flutter/material.dart';
import 'package:tp_list_view/listview_01.dart';
import 'package:tp_list_view/listview_02.dart';
import 'dart:developer' as developer;

import 'package:tp_list_view/listview_03.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Listview03(),
        ),
      ),
    );
  }
}
