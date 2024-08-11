import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () {
          //? go to book details navigate
          context.push(Routes.bookDetailsView);
        },
        child: SizedBox(
          height: 126.0,
          child: Row(
            children: [
              const CustomBookImage(borderRadius: 8.0),
              const SizedBox(width: defaultPadding),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 3.0),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.58,
                      child: Text(
                        'Harry Potter and the Goblet of Fire',
                        style: AppStyles.textStyle20.copyWith(
                          fontFamily: kGTSectraFine,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 3.0),
                    const Text(
                      'J.K. Rowling',
                      style: AppStyles.textStyle14,
                    ),
                    const SizedBox(height: 3.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('19.99 €', style: AppStyles.textStyle20),
                        BookRating(),
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
