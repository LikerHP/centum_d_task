import 'package:centum_d_test_task/domain/tournament/itournament.dart';

class Tournament implements ITournament {
  Tournament({
    required this.id,
    required this.endDate,
    required this.startDate,
    required this.teamsAmount,
    required this.tournamentName,
  });

  factory Tournament.fromJson(Map<String, dynamic> json) {
    return Tournament(
      id: json['id'],
      endDate: json['end_date'],
      teamsAmount: json['teams'],
      tournamentName: json['name'],
      startDate: json['start_date'],
    );
  }

  @override
  final int id;

  @override
  final String endDate;

  @override
  final String startDate;

  @override
  final int teamsAmount;

  @override
  final String tournamentName;
}
