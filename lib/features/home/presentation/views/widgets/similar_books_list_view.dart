import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.17,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 6),
            child: CustomBookImage(
              borderRadius: 8,
              imageUrl:
                  'http://books.google.com/books/content?id=mIxQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
            ),
          );
        },
      ),
    );
  }
}
