import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AspectRatio(
        aspectRatio: 2.65 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            image: const DecorationImage(
              image: AssetImage(AppAssets.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
