import 'package:centum_d_test_task/domain/tournament/itournament.dart';

abstract class ITournamentRepository {
  Future<List<ITournament>> fetchTournaments();
}
