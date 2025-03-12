import 'package:centum_d_test_task/app/routing/route_constants.dart';
import 'package:centum_d_test_task/app/screens/home/home_factory.dart';
import 'package:centum_d_test_task/app/screens/tournaments/tournaments_factory.dart';
import 'package:flutter/material.dart';

class Routing {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return _buildHomeScreen(settings);
      case routeTournaments:
        return _buildTournamentsScreen(settings);
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return const Scaffold(
              body: Center(child: Text('Ooops, something went wrong')),
            );
          },
        );
    }
  }

  static Widget buildHomeScreen() {
    return HomeFactory.build();
  }

  static MaterialPageRoute _buildHomeScreen(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) {
        return HomeFactory.build();
      },
    );
  }

  static MaterialPageRoute _buildTournamentsScreen(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) {
        return TournamentsFactory.build();
      },
    );
  }
}
