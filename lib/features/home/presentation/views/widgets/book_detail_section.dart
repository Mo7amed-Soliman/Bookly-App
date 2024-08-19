import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.2,
          ),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 28),
        //? book title and author
        Text(
          bookModel.volumeInfo!.title!,
          style: AppStyles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          bookModel.volumeInfo!.authors![0],
          style: AppStyles.textW600Style18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 16),
        //? book rating
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo!.averageRating ?? 0,
          ratingsCount: bookModel.volumeInfo!.ratingsCount ?? 0,
        ),
        const SizedBox(height: 34),
        //? book actions
        BookActions(bookModel: bookModel),
      ],
    );
  }
}
