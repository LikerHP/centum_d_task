import 'package:centum_d_test_task/app/app_view_model.dart';
import 'package:centum_d_test_task/app/routing/routing.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({required this.viewModel, super.key});

  final AppViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Centum-D Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      navigatorKey: viewModel.navigatorKey,
      onGenerateRoute:
          (RouteSettings settings) => Routing.onGenerateRoute(settings),
      home: Routing.buildHomeScreen(),
    );
  }
}
