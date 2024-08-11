import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    this.borderRadius = defaultRadius,
    super.key,
  });
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.64 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: const DecorationImage(
            image: AssetImage(AppAssets.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
