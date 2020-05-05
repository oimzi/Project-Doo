import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_doo_test/ui/views/home_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomeView homeViewRoute;
}