import 'package:centum_d_test_task/app/routing/inavigation_util.dart';
import 'package:flutter/material.dart';

class NavigationUtil extends INavigationUtil {
  static final NavigationUtil _instance = NavigationUtil._internal();

  NavigationUtil._internal();

  factory NavigationUtil() {
    return _instance;
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  bool get canPop => navigatorKey.currentState!.canPop();

  @override
  void navigateBack({data}) {
    navigatorKey.currentState!.pop(data);
  }

  @override
  Future navigateTo<T extends Object?>(
    String routeName, {
    bool allowBackNavigation = true,
    dynamic data,
  }) async {
    if (allowBackNavigation == false) {
      return navigatorKey.currentState!.pushReplacementNamed(
        routeName,
        arguments: data,
      );
    }
    return navigatorKey.currentState!.pushNamed(routeName, arguments: data);
  }
}
