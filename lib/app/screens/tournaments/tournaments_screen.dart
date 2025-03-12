import 'package:centum_d_test_task/app/screens/tournaments/tournaments_view_model.dart';
import 'package:centum_d_test_task/app/screens/tournaments/widgets/tournaments_list.dart';
import 'package:flutter/material.dart';

class TournamentsScreen extends StatelessWidget {
  const TournamentsScreen({required this.viewModel, super.key});

  final TournamentsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackButton(onPressed: viewModel.onBackButtonPressed),
            TournamentsList(
              isLoading: viewModel.isLoading,
              tournaments: viewModel.tournaments,
              errorMessage: viewModel.errorMessage,
              isErrorOccurred: viewModel.isErrorOccurred,
            ),
          ],
        ),
      ),
    );
  }
}
