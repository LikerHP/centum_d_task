import 'package:centum_d_test_task/app/routing/inavigation_util.dart';
import 'package:centum_d_test_task/domain/tournament/itournament.dart';
import 'package:centum_d_test_task/domain/tournament/itournament_repository.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required INavigationUtil navigationUtil,
    required ITournamentRepository tournamentRepository,
  }) : _navigationUtil = navigationUtil,
       _tournamentRepository = tournamentRepository;

  final INavigationUtil _navigationUtil;
  final ITournamentRepository _tournamentRepository;

  final List<ITournament> _tournaments = [];

  List<ITournament> get tournaments => _tournaments;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  bool _isErrorOccurred = false;

  bool get isErrorOccurred => _isErrorOccurred;

  void startWithLoading() {
    _isLoading = true;
    _updateUI();
  }

  Future<void> fetchInitialData() async {
    try {
      final List<ITournament> fetchedTournaments =
          await _tournamentRepository.fetchTournaments();

      if (fetchedTournaments.isNotEmpty) {
        _tournaments.addAll(fetchedTournaments);
      }
      _isLoading = false;
      _updateUI();
    } catch (_) {
      _isLoading = false;
      _isErrorOccurred = true;
      _updateUI();
    }
  }

  void _updateUI() {
    notifyListeners();
  }
}
