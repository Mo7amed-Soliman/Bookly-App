import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_detail_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              children: [
                SizedBox(height: 12),
                CustomBookDetailsAppBar(),
                BookDetailSection(),
                Expanded(child: SizedBox(height: 24)),
                SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}

