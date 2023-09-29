import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class Listview03 extends StatelessWidget {
  const Listview03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = [
      for (int i = 0; i < 20; i++) "https://picsum.photos/250?image=$i"
    ];
  Image.network()
  
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          developer.log("$index - ${entries.length}");

          return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(entries[index],),
              ),
              trailing: const Icon(Icons.account_box),
              title: Text("Item $index"));
        });
  }
}
