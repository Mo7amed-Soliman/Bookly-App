import 'package:bookly_app/core/utils/app_strings.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_bloc_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view_bloc_builder.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(),
        ),
        //? featured books list view
        SliverToBoxAdapter(
          child: FeaturedBooksListViewBlocBuilder(),
        ),
        //? Best Seller
        SliverPadding(
          padding: EdgeInsets.only(
            left: defaultPadding,
            top: defaultPadding,
            bottom: 10.0,
          ),
          sliver: SliverToBoxAdapter(
            child: Text(
              AppStrings.bestSeller,
              style: AppStyles.textW600Style18,
            ),
          ),
        ),
        // ? SliverList builder
        BestSellerListViewBlocBuilder(),
      ],
    );
  }
}
