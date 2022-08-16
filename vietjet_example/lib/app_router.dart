import 'package:flutter/material.dart';
import 'package:vietjet/vietjet.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static Map<String, WidgetBuilder> registerRoutes() {
    return {
      LoginScreen.routePath: (context) => LoginScreen.registerRoute(context),
      PaymentScreen.routePath: (context) => const PaymentScreen(),
    };
  }
}
