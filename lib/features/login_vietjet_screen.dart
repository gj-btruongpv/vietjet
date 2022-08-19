import 'package:flutter/material.dart';
import 'package:vietjet_sdk/features/vietjet_screen.dart';

class VJLoginScreen extends StatelessWidget {
  static const routePath = 'vj/login';
  const VJLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Vietjet'),
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, VietjetScreen.routePath);
              },
              child: Text('Vietjet')),
        ));
  }
}
