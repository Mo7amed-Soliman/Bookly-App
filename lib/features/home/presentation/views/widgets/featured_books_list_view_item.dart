import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListViewItem extends StatelessWidget {
  const FeaturedBooksListViewItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          //? navigate to book details
          context.push(
            Routes.bookDetailsView,
            extra: bookModel,
          );
        },
        child: CustomBookImage(
          imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? '',
        ),
      ),
    );
  }
}
