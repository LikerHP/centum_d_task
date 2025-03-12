import 'package:centum_d_test_task/app/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DataNotFoundWidget extends StatelessWidget {
  const DataNotFoundWidget({this.message = '', super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: getTextTheme(context).bodyLarge?.apply(
          color: Colors.black,
        ),
      ),
    );
  }
}
