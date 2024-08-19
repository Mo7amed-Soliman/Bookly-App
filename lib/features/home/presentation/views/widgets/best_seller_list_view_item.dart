import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () {
          //? go to book details navigate
          context.push(
            Routes.bookDetailsView,
            extra: bookModel,
          );
        },
        child: SizedBox(
          height: 126.0,
          child: Row(
            children: [
              CustomBookImage(
                borderRadius: 8.0,
                imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
              ),
              const SizedBox(width: defaultPadding),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 3.0),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.58,
                      child: Text(
                        bookModel.volumeInfo!.title!,
                        style: AppStyles.textStyle20.copyWith(
                          fontFamily: kGTSectraFine,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 3.0),
                    Text(
                      bookModel.volumeInfo!.authors?[0] ?? '',
                      style: AppStyles.textStyle14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 3.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Free', style: AppStyles.textStyle20),
                        BookRating(
                          rating: bookModel.volumeInfo?.averageRating ?? 0.0,
                          ratingsCount: bookModel.volumeInfo?.ratingsCount ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
