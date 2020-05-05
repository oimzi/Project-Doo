// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_doo_test/ui/views/home_view.dart';
import 'package:flutter_doo_test/ui/views/create_view.dart';

abstract class Routes {
  static const homeViewRoute = '/';
  static const createViewRoute = '/create-view-route';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeView(),
          settings: settings,
        );
      case Routes.createViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => CreateView(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
