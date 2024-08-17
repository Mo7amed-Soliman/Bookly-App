import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverList.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return BestSellerListViewItem(
                  bookModel: state.books[index],
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: Center(
                child: Text(
              state.errMessage,
              textAlign: TextAlign.center,
            )),
          );
        } else {
          return const SliverToBoxAdapter(
            child: BestSellerListViewLoadingIndicator(),
          );
        }
      },
    );
  }
}

// class BestSellerListView extends StatelessWidget {
//   const BestSellerListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
//       physics: const NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return const BestSellerListViewItem();
//       },
//     );
//   }
// }
