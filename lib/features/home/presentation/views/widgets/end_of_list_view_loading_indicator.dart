import 'package:bookly_app/core/widgets/custom_fading_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_loading_indicator.dart';
import 'package:flutter/material.dart';

class EndOfListViewLoadingIndicator extends StatelessWidget {
  const EndOfListViewLoadingIndicator({
    super.key,
    this.borderRadius = 16,
  });
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: Row(
        children: [
          const SizedBox(width: 8),
          CustomBookImageLoadingIndicator(
            borderRadius: borderRadius,
          ),
          const SizedBox(width: 12),
          const CircularProgressIndicator(),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
