import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/screens/first_page/first_page.dart';
import 'package:tp_gorouter/screens/hello_page/hello_page.dart';
import 'package:tp_gorouter/screens/home_screen/home_screen.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: HomeScreen.route,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: FirstPage.route,
      builder: (context, state) => const FirstPage(),
    ),
    GoRoute(
      path: HelloPage.route,
      builder: (context, state) =>
          HelloPage(name: state.pathParameters['the_name'] ?? "Empty"),
    ),
  ],
);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
