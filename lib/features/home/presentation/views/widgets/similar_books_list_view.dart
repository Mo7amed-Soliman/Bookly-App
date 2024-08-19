import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/end_of_list_view_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatefulWidget {
  const SimilarBooksListView({super.key, required this.books});
  final List<BookModel> books;

  @override
  State<SimilarBooksListView> createState() => _SimilarBooksListViewState();
}

class _SimilarBooksListViewState extends State<SimilarBooksListView> {
  late ScrollController _scrollController;
  bool isLoading = false;
  int nwxtPage = 1;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.17,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: widget.books.length + 1,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          if (index == widget.books.length) {
            return const EndOfListViewLoadingIndicator(borderRadius: 8);
          }
          return Padding(
            padding: const EdgeInsets.only(right: 6),
            child: CustomBookImage(
              borderRadius: 8,
              imageUrl:
                  widget.books[index].volumeInfo!.imageLinks?.thumbnail ?? '',
            ),
          );
        },
      ),
    );
  }

  void scrollListener() async {
    var currentScrollPosition = _scrollController.position.pixels;
    var maxScrollPosition = _scrollController.position.maxScrollExtent;
    if (currentScrollPosition >= 0.8 * maxScrollPosition) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
          category: context.read<SimilarBooksCubit>().categoryForBook,
          pageNumber: nwxtPage++,
        );
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
