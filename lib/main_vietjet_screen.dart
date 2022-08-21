import 'package:flutter/material.dart';
import 'package:vietjet_sdk/features/login_vietjet_screen.dart';
import 'package:vietjet_sdk/vietjet_router.dart';

class MainVietJetScreen extends StatefulWidget {
  static const routePath = 'vj/main';
  const MainVietJetScreen({Key? key}) : super(key: key);

  @override
  State<MainVietJetScreen> createState() => _MainVietJetScreenState();
}

class _MainVietJetScreenState extends State<MainVietJetScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      onGenerateRoute: AppVietJetRouter.registerRoutes,
      initialRoute: VJLoginScreen.routePath,
    );
  }
}
