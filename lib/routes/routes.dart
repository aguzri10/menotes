import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menotes/pages/main_page.dart';
import 'package:menotes/routes/constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case rootRoute:
        return MaterialPageRoute(builder: (_) => Root());
      case mainNavigateRoute:
        return MaterialPageRoute(builder: (_) => MainNavigate());
      default:
        return null;
    }
  }
}
