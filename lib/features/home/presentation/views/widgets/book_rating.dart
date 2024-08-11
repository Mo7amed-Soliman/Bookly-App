import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 18.0,
        ),
        SizedBox(width: 6.0),
        Text(
          '4.8',
          style: AppStyles.textW500Style16,
        ),
        SizedBox(width: 3.0),
        Text(
          '(2300)',
          style: AppStyles.textStyle14,
        ),
      ],
    );
  }
}
