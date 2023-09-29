import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/screens/first_page/first_page.dart';
import 'package:tp_gorouter/screens/hello_page/hello_page.dart';

class HomeScreen extends StatelessWidget {
  static String route = "/";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('HomeScreen'),
            TextButton(
                child: const Text('Go to first page'),
                // onPressed: () => context.go(FirstPage.route),
                onPressed: () => context.push(FirstPage.route)),
            TextButton(
                child: const Text('Go to Hello page'),
                // onPressed: () => context.go(FirstPage.route),
                onPressed: () => context.push("/hello/Toto"))
          ],
        ),
      ),
    );
  }
}
