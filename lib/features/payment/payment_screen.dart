import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  static const routePath = '/payment';
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: const SizedBox(),
    );
  }
}
