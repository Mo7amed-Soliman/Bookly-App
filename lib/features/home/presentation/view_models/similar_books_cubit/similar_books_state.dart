part of 'similar_books_cubit.dart';

sealed class SimilarBooksState {
  const SimilarBooksState();
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksFailure extends SimilarBooksState {
  final Failure failure;

  const SimilarBooksFailure(this.failure);
}

final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccess(this.books);
}
// ? pagination state

class SimilarBooksPaginationLoading extends SimilarBooksState {}

class SimilarBooksPaginationFailure extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksPaginationFailure(this.errMessage);
}
