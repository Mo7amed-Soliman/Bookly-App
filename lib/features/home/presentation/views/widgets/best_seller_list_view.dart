import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
    );
  }
}
