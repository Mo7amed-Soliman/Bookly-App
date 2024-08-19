import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/widgets/custom_fading_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item_loading_indicartor.dart';
import 'package:flutter/material.dart';

class BestSellerListViewLoadingIndicator extends StatelessWidget {
  const BestSellerListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BestSellerListViewItemLoadingIndicator();
        },
      ),
    );
  }
}
