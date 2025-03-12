import 'dart:convert';

import 'package:centum_d_test_task/data/tournament/tournament.dart';
import 'package:centum_d_test_task/domain/tournament/itournament.dart';
import 'package:centum_d_test_task/domain/tournament/itournament_repository.dart';
import 'package:flutter/services.dart';

const String _tournamentsPath = 'assets/responses/tournaments.json';

class TournamentRepository extends ITournamentRepository {
  TournamentRepository();

  @override
  Future<List<ITournament>> fetchTournaments() async {
    try {
      List<dynamic>? data;
      final String json = await rootBundle.loadString(_tournamentsPath);
      await Future.delayed(const Duration(seconds: 3), () async {
        data = jsonDecode(json);
      });
      if (data != null) {
        return List<ITournament>.from(
          data!.map((tournament) => Tournament.fromJson(tournament)).toList(),
        );
      } else {
        throw (Exception('Data is not found'));
      }
    } catch (_) {
      rethrow;
    }
  }
}
