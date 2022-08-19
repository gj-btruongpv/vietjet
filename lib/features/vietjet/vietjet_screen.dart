import 'package:flutter/material.dart';
import 'package:payment_sdk/payment_sdk_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VietjetScreen extends StatelessWidget {
  static const routePath = '/shipping';
  const VietjetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Vietjet'),
          actions: [IconButton(onPressed: () {
            Navigator.pushNamed(context, PaymentSDkScreen.routePath);
          }, icon: Icon(Icons.payment))],
        ),
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://www.vietjetair.com/vi',
        ));
  }
}
