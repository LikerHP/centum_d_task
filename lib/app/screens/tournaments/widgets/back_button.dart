import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  const BackButton({required this.onPressed, super.key});

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed,
        icon: Icon(Icons.arrow_back, color: Colors.black,),
    );
  }
}
