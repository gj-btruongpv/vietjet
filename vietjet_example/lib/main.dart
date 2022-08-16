import 'package:flutter/material.dart';
import 'package:vietjet_example/app_router.dart';
import 'package:vietjet_example/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: AppRouter.registerRoutes(),
      home: const HomeScreen()
    );
  }
}

