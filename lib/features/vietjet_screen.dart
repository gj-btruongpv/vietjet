import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VietjetScreen extends StatelessWidget {
  static const routePath = '/vj/vietjet';
  const VietjetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/gj/tab', (route) => false);
            },
          ),
          backgroundColor: Colors.red,
          title: const Text('Wellcome Vietjet'),
        ),
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://www.vietjetair.com/vi',
        ));
  }
}
