part of 'newest_books_cubit.dart';

abstract class NewestBooksState {
  const NewestBooksState();
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksFailure extends NewestBooksState {
  final String errMessage;

  const NewestBooksFailure(this.errMessage);
}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSuccess(this.books);
}
// ? pagination state

class NewestBooksPaginationLoading extends NewestBooksState {}

class NewestBooksPaginationFailure extends NewestBooksState {
  final String errMessage;

  const NewestBooksPaginationFailure(this.errMessage);
}
