import 'package:centum_d_test_task/app/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TournamentInfoWidget extends StatelessWidget {
  const TournamentInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final TextTheme textTheme = getTextTheme(context);
    return Container(
      height: screenSize.height * 0.08,
      padding: const EdgeInsetsDirectional.all(8),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Name', style: textTheme.titleMedium),
          const SizedBox(width: 20,),
          Text('Teams', style: textTheme.titleMedium),
          Text('Start date', style: textTheme.titleMedium),
          Text('End date', style: textTheme.titleMedium),
        ],
      ),
    );
  }
}
