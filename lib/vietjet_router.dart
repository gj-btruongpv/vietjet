import 'package:flutter/material.dart';
import 'package:payment_sdk/home_screen.dart';
import 'package:payment_sdk/payment_sdk_screen.dart';
import 'package:vietjet_sdk/features/login_vietjet_screen.dart';
import 'package:vietjet_sdk/features/vietjet_screen.dart';

class AppVietJetRouter {
  static GlobalKey<NavigatorState>? navigatorKey = null;

  static Route<dynamic> registerRoutes(RouteSettings route) {
    debugPrint(route.name);
    if (route.name == HomePaymentScreen.routePath) {
      return MaterialPageRoute(builder: (context) => const HomePaymentScreen());
    } else if (route.name == PaymentSDkScreen.routePath) {
      return MaterialPageRoute(builder: (context) => const PaymentSDkScreen());
    } else if (route.name == VJLoginScreen.routePath) {
      return MaterialPageRoute(builder: (context) => const VJLoginScreen());
    } else if (route.name == VietjetScreen.routePath) {
      return MaterialPageRoute(builder: (context) => const VietjetScreen());
    } else {
      return MaterialPageRoute(builder: (context) => const Text('Not found screen'));
    }
  }

  BuildContext? getContext(BuildContext? ctx) {
    var context = ctx;
    if (context == null) {
      context = AppVietJetRouter.navigatorKey?.currentContext;
    }

    return context;
  }
}
