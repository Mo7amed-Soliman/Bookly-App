import 'package:bookly_app/core/widgets/custom_fading_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_loading_indicator.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.26,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomBookImageLoadingIndicator(),
            );
          },
        ),
      ),
    );
  }
}
