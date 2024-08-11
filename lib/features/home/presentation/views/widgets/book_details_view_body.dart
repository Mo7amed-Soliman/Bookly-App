import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          const SizedBox(height: 12),
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.17,
            ),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 43),
          const Text(
            'The Jungle Book',
            style: AppStyles.textStyle30,
          ),
          const SizedBox(height: 6),
          Text(
            'J. K. Rowling',
            style: AppStyles.textW600Style18.copyWith(
              fontStyle: FontStyle.italic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
