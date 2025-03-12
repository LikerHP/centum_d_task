import 'package:flutter/material.dart';

const String _backgroundImageAssetPath = 'assets/images/home_background.jpg';

class ImageBackground extends StatelessWidget {
  const ImageBackground({
    required this.child,
    this.childTopPosition,
    this.childEndPosition,
    this.childStartPosition,
    this.childBottomPosition,
    super.key,
  });

  final Widget child;
  final double? childStartPosition;
  final double? childTopPosition;
  final double? childEndPosition;
  final double? childBottomPosition;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(
          _backgroundImageAssetPath,
          fit: BoxFit.cover,
          width: screenSize.width,
          height: screenSize.height,
        ),
        PositionedDirectional(
          start: childStartPosition,
          top: childTopPosition,
          end: childEndPosition,
          bottom: childBottomPosition,
          child: child,
        ),
      ],
    );
  }
}
