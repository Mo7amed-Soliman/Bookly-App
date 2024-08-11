import 'package:bookly_app/core/utils/app_strings.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        Padding(
          padding: EdgeInsets.only(
            left: defaultPadding,
            top: defaultPadding,
            bottom: 14.0,
          ),
          child: Text(
            AppStrings.bestSeller,
            style: AppStyles.textW600Style18,
          ),
        ),
        Expanded(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
