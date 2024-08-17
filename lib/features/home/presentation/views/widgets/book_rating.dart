import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.center,
      required this.rating,
      required this.ratingsCount});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int ratingsCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 22.0,
        ),
        const SizedBox(width: 8.0),
        Text(
          '$rating',
          style: AppStyles.textW500Style16,
        ),
        const SizedBox(width: 3.0),
        Text(
          '($ratingsCount)',
          style: AppStyles.textStyle14,
        ),
      ],
    );
  }
}
