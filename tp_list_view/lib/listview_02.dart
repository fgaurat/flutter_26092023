import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class Listview02 extends StatelessWidget {
  const Listview02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = List.generate(100, (index) => "Item $index");
    return Scrollbar(
        interactive: true,
        thickness: 20,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            // itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              developer.log("$index - ${entries.length}");
              if (index == entries.length) {
                return null;
              }
              return ListTile(title: Text(entries[index]));
            }));
  }
}
