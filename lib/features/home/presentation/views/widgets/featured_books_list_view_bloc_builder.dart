import 'package:bookly_app/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_models/featured_books_cubit/featured_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListViewBlocBuilder extends StatelessWidget {
  const FeaturedBooksListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return FeaturedBooksListView(books: state.books);
        } else if (state is FeaturedBooksFailure) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.26,
            child: Center(
              child: Text(
                state.errMessage,
                textAlign: TextAlign.center,
              ),
            ),
          );
        } else {
          return const FeaturedBooksListViewLoadingIndicator();
        }
      },
    );
  }
}
