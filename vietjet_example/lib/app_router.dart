import 'package:flutter/material.dart';
import 'package:vietjet/vietjet_router.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static Map<String, WidgetBuilder> registerRoutes() {
    return {
      ...AppVietJetRouter.registerRoutesVietJet(key: navigatorKey, baseUrl: ''),
    };
  }
}
