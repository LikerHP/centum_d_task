import 'package:centum_d_test_task/app/routing/inavigation_util.dart';
import 'package:centum_d_test_task/app/routing/route_constants.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({required INavigationUtil navigationUtil})
    : _navigationUtil = navigationUtil;

  final INavigationUtil _navigationUtil;

  void onSeeTournamentsPressed() {
    _navigationUtil.navigateTo(routeTournaments);
  }
}
