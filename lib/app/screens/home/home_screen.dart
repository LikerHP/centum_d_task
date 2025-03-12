import 'package:centum_d_test_task/app/screens/home/home_view_model.dart';
import 'package:centum_d_test_task/app/screens/home/widgets/image_background.dart';
import 'package:centum_d_test_task/app/theme/text_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({required this.viewModel, super.key});

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ImageBackground(
        childStartPosition: 30,
        childTopPosition: screenSize.height * 0.3,
        childEndPosition: 30,
        child: Column(
          children: [
            Text(
              'Welcome!\nWould you like to see current football tournaments?',
              textAlign: TextAlign.center,
              style: getTextTheme(
                context,
              ).displayLarge?.apply(color: Colors.white),
            ),
            SizedBox(height: screenSize.height * 0.26),
            OutlinedButton(
              onPressed: viewModel.onSeeTournamentsPressed,
              style: _getButtonStyle(context),
              child: Text(
                'See tournaments',
                style: getTextTheme(
                  context,
                ).bodyLarge?.apply(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// NOTE: in real project this would be moved into separate file and used as default theme for OutlinedButton
  ButtonStyle _getButtonStyle(BuildContext context) {
    return ButtonStyle(
      fixedSize: WidgetStatePropertyAll<Size>(
        Size(MediaQuery.sizeOf(context).width * 0.6, 54),
      ),
      backgroundColor: WidgetStatePropertyAll<Color>(Colors.lightBlueAccent),
      side: WidgetStatePropertyAll<BorderSide>(
        BorderSide(color: Colors.lightBlueAccent),
      ),
    );
  }
}
