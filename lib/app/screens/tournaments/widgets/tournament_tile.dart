import 'package:centum_d_test_task/domain/tournament/itournament.dart';
import 'package:flutter/material.dart';

class TournamentTile extends StatelessWidget {
  const TournamentTile({required this.tournament, super.key});

  final ITournament tournament;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    return Container(
      height: screenSize.height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      padding: const EdgeInsetsDirectional.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 100, child: Text(tournament.tournamentName)),
          Text(tournament.teamsAmount.toString()),
          Text(tournament.startDate),
          Text(tournament.endDate),
        ],
      ),
    );
  }
}