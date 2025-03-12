import 'package:centum_d_test_task/app/routing/inavigation_util.dart';
import 'package:centum_d_test_task/app/screens/home/home_screen.dart';
import 'package:centum_d_test_task/app/screens/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeFactory {
  static Widget build() {
    return ChangeNotifierProvider<HomeViewModel>(
      create:
          (BuildContext context) =>
              HomeViewModel(navigationUtil: context.read<INavigationUtil>()),
      child: Consumer<HomeViewModel>(
        builder: (context, model, child) {
          return HomeScreen(viewModel: model);
        },
      ),
    );
  }
}
