import 'package:centum_d_test_task/app/routing/inavigation_util.dart';
import 'package:flutter/material.dart';

class AppViewModel extends ChangeNotifier {
  AppViewModel({required INavigationUtil navigationUtil})
    : _navigationUtil = navigationUtil;

  final INavigationUtil _navigationUtil;

  GlobalKey<NavigatorState> get navigatorKey => _navigationUtil.navigatorKey;
}
