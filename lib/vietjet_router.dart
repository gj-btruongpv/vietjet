
import 'package:flutter/material.dart';
import 'package:payment_sdk/home_screen.dart';
import 'package:payment_sdk/payment_sdk_screen.dart';
import 'package:vietjet_sdk/vietjet.dart';
import 'package:vietjet_sdk/globals.dart' as globals;

class AppVietJetRouter {
  static GlobalKey<NavigatorState>? navigatorKey = null;

  static Map<String, WidgetBuilder> registerRoutesVietJet(
      {required GlobalKey<NavigatorState> key, required String baseUrl}) {
    navigatorKey = key;
    globals.baseUrl = baseUrl;
    debugPrint('VJ Base URL ${globals.baseUrl}');
    return {
      VietjetScreen.routePath: (context) => const VietjetScreen(),
      PaymentSDkScreen.routePath:(context) => PaymentSDkScreen(),
    };
  }

  static Route<dynamic> registerRoutes(RouteSettings route) {
    if (route.name == HomePaymentScreen.routePath) {
      return MaterialPageRoute(builder: (context) => const HomePaymentScreen());
    } else {
      return MaterialPageRoute(builder: (context) => const PaymentSDkScreen());
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
