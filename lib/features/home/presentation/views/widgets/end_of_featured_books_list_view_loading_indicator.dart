import 'package:bookly_app/core/widgets/custom_fading_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_loading_indicator.dart';
import 'package:flutter/material.dart';

class EndOfFeaturedBooksListViewLoadingIndicator extends StatelessWidget {
  const EndOfFeaturedBooksListViewLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomFadingWidget(
      child: Row(
        children: [
          SizedBox(width: 8),
          CustomBookImageLoadingIndicator(),
          SizedBox(width: 12),
          CircularProgressIndicator(),
          SizedBox(width: 12),
        ],
      ),
    );
  }
}
