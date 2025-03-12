abstract interface class ITournament {
  const ITournament({
    required this.id,
    required this.endDate,
    required this.startDate,
    required this.teamsAmount,
    required this.tournamentName,
  });

  final int id;
  final String endDate;
  final int teamsAmount;
  final String startDate;
  final String tournamentName;
}
