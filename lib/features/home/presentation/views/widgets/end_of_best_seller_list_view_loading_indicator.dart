import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/widgets/custom_fading_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item_loading_indicartor.dart';
import 'package:flutter/material.dart';

class EndOfBestSellerListViewLoadingIndicator extends StatelessWidget {
  const EndOfBestSellerListViewLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomFadingWidget(
            child: BestSellerListViewItemLoadingIndicator(),
          ),
          SizedBox(height: 10),
          CircularProgressIndicator(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
