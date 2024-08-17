import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.2,
          ),
          child: const CustomBookImage(
            imageUrl:
                'http://books.google.com/books/content?id=mIxQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
          ),
        ),
        const SizedBox(height: 28),
        //? book title and author
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
        const SizedBox(height: 16),
        //? book rating
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 34),
        //? book actions
        const BookActions(),
      ],
    );
  }
}
