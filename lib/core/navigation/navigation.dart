import 'package:flutter/material.dart';
import 'package:friflex_test/core/di/service_locator.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class NavigationService {
  static NavigationService get current => getIt<NavigationService>();

  final RouteObserver<PageRoute> rootRouteObserver = RouteObserver<PageRoute>();
  final GlobalKey<NavigatorState> rootKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> mainKey = GlobalKey<NavigatorState>();
}