import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/end_of_featured_books_list_view_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({super.key, required this.books});
  final List<BookModel> books;

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
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
      height: MediaQuery.of(context).size.height * 0.26,
      child: ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: widget.books.length + 1,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          if (index == widget.books.length) {
            return const EndOfFeaturedBooksListViewLoadingIndicator();
          }
          return FeaturedBooksListViewItem(
            bookModel: widget.books[index],
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
        await BlocProvider.of<FeaturedBooksCubit>(context)
            .fetchFeaturedBooks(pageNumber: nwxtPage++);
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
