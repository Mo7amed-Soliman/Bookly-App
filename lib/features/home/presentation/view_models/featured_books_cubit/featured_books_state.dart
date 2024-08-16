import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksStates {
  const FeaturedBooksStates();
}

class FeaturedBooksInitial extends FeaturedBooksStates {}

class FeaturedBooksLoading extends FeaturedBooksStates {}

class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}

class FeaturedBooksFailure extends FeaturedBooksStates {
  final String errMessage;

  const FeaturedBooksFailure(this.errMessage);
}
