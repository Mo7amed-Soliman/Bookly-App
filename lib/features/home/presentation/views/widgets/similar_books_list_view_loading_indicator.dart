import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_loading_indicator.dart';
import 'package:flutter/material.dart';

class SimilarBooksListViewLoadingIndicator extends StatelessWidget {
  const SimilarBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.17,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 6),
            child: CustomBookImageLoadingIndicator(
              borderRadius: 8.0,
            ),
          );
        },
      ),
    );
  }
}
