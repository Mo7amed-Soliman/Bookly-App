import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.2,
            ),
            child: const CustomBookImage(),
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
          const SizedBox(height: 24),
          //? you can also like => similar books list view
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: AppStyles.textW500Style16.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 12),
          const SimilarBooksListView(),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
