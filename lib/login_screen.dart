import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final String url;
  static const routePath = '/login';
  const LoginScreen({Key? key, required this.url}) : super(key: key);

  static Widget registerRoute(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as String;
    return LoginScreen(url: arg);
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController ctEmail = TextEditingController();
  TextEditingController ctPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    debugPrint(widget.url);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            TextFormField(
              controller: ctEmail,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: ctPass,
              decoration: const InputDecoration(hintText: 'Pass'),
            ),
            const SizedBox(
              height: 32,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  String text = '${ctEmail.text}\n${ctPass.text}';
                  Navigator.pop(context, text);
                },
                child: Container(
                  width: 200,
                  height: 48,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    ctEmail.dispose();
    ctPass.dispose();
    super.dispose();
  }
}
