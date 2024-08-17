import 'package:flutter/material.dart';

class CustomBookImageLoadingIndicator extends StatelessWidget {
  const CustomBookImageLoadingIndicator({super.key, this.borderRadius = 16});

  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: Colors.white30,
        ),
      ),
    );
  }
}
