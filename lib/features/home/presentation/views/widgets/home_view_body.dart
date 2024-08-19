import 'package:bookly_app/core/utils/app_strings.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_bloc_consumer.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_sellerl_list_view_bloc_builder_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  late ScrollController _scrollController;
  bool isLoading = false;
  int nextPage = 1;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: const [
        SliverToBoxAdapter(
          child: CustomAppBar(),
        ),
        //? featured books list view
        SliverToBoxAdapter(
          child: FeaturedBooksListViewBlocConsumer(),
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
        BestSellerListViewBlocConsumer(),
        BestSellerListViewBlocBuilderLoadingIndicator(),
      ],
    );
  }

  void scrollListener() async {
    var currentScrollPosition = _scrollController.position.pixels;
    var maxScrollPosition = _scrollController.position.maxScrollExtent;
    if (currentScrollPosition >= 0.8 * maxScrollPosition) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<NewestBooksCubit>(context)
            .fetchNewestBooks(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
