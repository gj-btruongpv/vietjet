import 'package:flutter/material.dart';
import 'package:vietjet_sdk/vietjet.dart';

class AppVietJetRouter {
  static Map<String, WidgetBuilder> registerRoutesVietJet() {
    return {
      LoginScreen.routePath: (context) => LoginScreen.registerRoute(context),
      PaymentScreen.routePath: (context) => const PaymentScreen(),
    };
  }
}
