import 'package:centum_d_test_task/app/screens/tournaments/widgets/data_not_found_widget.dart';
import 'package:centum_d_test_task/app/screens/tournaments/widgets/loading_shimmer_widget.dart';
import 'package:centum_d_test_task/app/screens/tournaments/widgets/tournament_info_widget.dart';
import 'package:centum_d_test_task/app/screens/tournaments/widgets/tournament_tile.dart';
import 'package:centum_d_test_task/domain/tournament/itournament.dart';
import 'package:flutter/material.dart';

class TournamentsList extends StatelessWidget {
  const TournamentsList({
    required this.isLoading,
    required this.tournaments,
    this.isErrorOccurred = false,
    this.errorMessage,
    super.key,
  });

  final bool isLoading;
  final String? errorMessage;
  final bool isErrorOccurred;
  final List<ITournament> tournaments;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TournamentInfoWidget(),
        isLoading
            ? LoadingShimmerWidget()
            : isErrorOccurred
            ? DataNotFoundWidget(message: errorMessage!)
            : ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsetsDirectional.all(8),
              itemCount: tournaments.length,
              itemBuilder: (_, int index) {
                return TournamentTile(tournament: tournaments[index]);
              },
              separatorBuilder: (_, __) {
                return const SizedBox(height: 10);
              },
            ),
      ],
    );
  }
}
