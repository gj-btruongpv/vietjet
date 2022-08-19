import 'package:flutter/material.dart';
import 'package:vietjet_sdk/features/login_vietjet_screen.dart';
import 'package:vietjet_sdk/vietjet.dart';


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
       onGenerateRoute: AppVietJetRouter.registerRoutes,
       initialRoute: VJLoginScreen.routePath,
    );
  }
}


