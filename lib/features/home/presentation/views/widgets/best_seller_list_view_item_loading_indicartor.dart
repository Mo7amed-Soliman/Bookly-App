import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_loading_indicator.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItemLoadingIndicator extends StatelessWidget {
  const BestSellerListViewItemLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 126.0,
        child: Row(
          children: [
            const CustomBookImageLoadingIndicator(
              borderRadius: 8.0,
            ),
            const SizedBox(width: defaultPadding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25.0),
                  Container(
                    height: 6.0,
                    color: Colors.white30,
                  ),
                  const SizedBox(height: 25.0),
                  Container(
                    height: 6.0,
                    width: MediaQuery.of(context).size.width * 0.45,
                    color: Colors.white30,
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 4.0,
                        width: 60.0,
                        color: Colors.white30,
                      ),
                      Container(
                        height: 4.0,
                        width: 85.0,
                        color: Colors.white30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
