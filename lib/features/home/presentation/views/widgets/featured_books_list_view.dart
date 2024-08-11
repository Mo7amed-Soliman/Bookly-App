import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.305,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(
          left: defaultPadding,
          top: 16.0,
        ),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const FeaturedListViewItem();
        },
      ),
    );
  }
}
