import 'package:centum_d_test_task/app/app.dart';
import 'package:centum_d_test_task/app/app_view_model.dart';
import 'package:centum_d_test_task/app/routing/inavigation_util.dart';
import 'package:centum_d_test_task/app/routing/navigation_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  ///Navigation
  final INavigationUtil navigationUtil = NavigationUtil();
  runApp(
    MultiProvider(
      providers: [Provider.value(value: navigationUtil)],
      child: ChangeNotifierProvider<AppViewModel>(
        create: (_) => AppViewModel(navigationUtil: navigationUtil),
        child: Consumer<AppViewModel>(
          builder: (context, model, child) {
            return App(viewModel: model);
          },
        ),
      ),
    ),
  );
}
