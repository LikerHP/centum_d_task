import 'package:centum_d_test_task/app/routing/inavigation_util.dart';
import 'package:centum_d_test_task/app/screens/tournaments/tournaments_screen.dart';
import 'package:centum_d_test_task/app/screens/tournaments/tournaments_view_model.dart';
import 'package:centum_d_test_task/data/tournament/tournament_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TournamentsFactory {
  static Widget build() {
    return ChangeNotifierProvider<TournamentsViewModel>(
      create:
          (BuildContext context) =>
              TournamentsViewModel(
                  navigationUtil: context.read<INavigationUtil>(),
                  tournamentRepository: TournamentRepository(),
                )
                ..startWithLoading()
                ..fetchInitialData(),
      child: Consumer<TournamentsViewModel>(
        builder: (context, model, child) {
          return TournamentsScreen(viewModel: model);
        },
      ),
    );
  }
}
