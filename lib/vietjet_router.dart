import 'package:flutter/material.dart';
import 'package:vietjet_sdk/vietjet.dart';
import 'package:vietjet_sdk/globals.dart' as globals;

class AppVietJetRouter {
  static GlobalKey<NavigatorState>? navigatorKey = null;

  static Map<String, WidgetBuilder> registerRoutesVietJet({required GlobalKey<NavigatorState> key, required String baseUrl}) {
    navigatorKey = key;
    globals.baseUrl = baseUrl;
    debugPrint('VJ Base URL ${globals.baseUrl}');
    return {
      LoginScreen.routePath: (context) => LoginScreen.registerRoute(context),
      PaymentScreen.routePath: (context) => const PaymentScreen(),
    };
  }

  BuildContext? getContext(BuildContext? ctx) {
    var context = ctx;
    if (context == null) {
      context = AppVietJetRouter.navigatorKey?.currentContext;
    }

    return context;
  }
}
