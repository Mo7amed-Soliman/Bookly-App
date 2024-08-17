import 'package:bookly_app/core/utils/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    this.borderRadius = defaultRadius,
    super.key,
    required this.imageUrl,
  });
  final double borderRadius;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        // child: Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(borderRadius),
        //     image: const DecorationImage(
        //       image: AssetImage(AppAssets.testImage),
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
