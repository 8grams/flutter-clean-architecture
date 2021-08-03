import 'package:flutter/material.dart';
import 'package:refactory_flutter_test/app/ui/pages/home/view.dart';
import 'package:refactory_flutter_test/app/ui/pages/pages.dart';
import 'package:refactory_flutter_test/app/ui/pages/users/view.dart';

class Router {
  RouteObserver<PageRoute> routeObserver;

  Router() {
    routeObserver = RouteObserver<PageRoute>();
  }

  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Pages.home:
        return _buildRoute(settings, HomePage());
      case Pages.users:
        return _buildRoute(settings, UsersPage());
      default:
        return null;
    }
  }

  MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return new MaterialPageRoute(
      settings: settings,
      builder: (ctx) => builder,
    );
  }
}