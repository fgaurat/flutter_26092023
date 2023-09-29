import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  static String route = "/first";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FirstPage"),
      ),
      body: Column(
        children: [
          const Text('FirstPage'),
          TextButton(
            onPressed: () => context.pop(),
            child: const Text("Back"),
          )
        ],
      ),
    );
  }
}
