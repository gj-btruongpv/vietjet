import 'package:flutter/material.dart';
import 'package:vietjet/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 24),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Center(
            child: InkWell(
              onTap: () async {
                dynamic result = await Navigator.pushNamed(context, LoginScreen.routePath,
                    arguments: 'https://gid-stg.demoapp.info/realms/:realmName/protocol/openid-connect/');
                if (result != null) {
                  text = result;
                  setState(() {});
                }
              },
              child: Container(
                width: 200,
                height: 48,
                alignment: Alignment.center,
                color: Colors.blue,
                child: const Text(
                  'HD Bank',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
