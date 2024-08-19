import 'package:bookly_app/core/functions/show_snack_bar.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListViewBlocBuilder extends StatefulWidget {
  const SimilarBooksListViewBlocBuilder({super.key});

  @override
  State<SimilarBooksListViewBlocBuilder> createState() =>
      _SimilarBooksListViewBlocBuilderState();
}

class _SimilarBooksListViewBlocBuilderState
    extends State<SimilarBooksListViewBlocBuilder> {
  List<BookModel> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SimilarBooksCubit, SimilarBooksState>(
      listener: (context, state) {
        if (state is SimilarBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is SimilarBooksFailure) {
          showSnackBar(context, state.failure.errmessage);
        }
      },
      builder: (context, state) {
        if (state is SimilarBooksSuccess ||
            state is SimilarBooksPaginationLoading ||
            state is SimilarBooksPaginationFailure) {
          return SimilarBooksListView(books: books);
        } else if (state is SimilarBooksFailure) {
          return Center(
            child: Text(
              state.failure.errmessage,
              textAlign: TextAlign.center,
            ),
          );
        } else {
          return const SimilarBooksListViewLoadingIndicator();
        }
      },
    );
  }
}
