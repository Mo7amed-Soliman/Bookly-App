import 'package:bookly_app/core/networking/die_faliure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this._homeRepo) : super(SimilarBooksInitial());
  final HomeRepoImpl _homeRepo;
  String categoryForBook = '';
  Future<void> fetchSimilarBooks({
    required String category,
    int pageNumber = 0,
  }) async {
    categoryForBook = category;
    if (pageNumber == 0) {
      emit(SimilarBooksLoading());
    } else {
      emit(SimilarBooksPaginationLoading());
    }
    var result = await _homeRepo.fetchSimilarBooks(
        category: category, pageNumber: pageNumber);
    result.fold((failure) {
      if (pageNumber == 0) {
        emit(SimilarBooksFailure(failure));
      } else {
        emit(SimilarBooksPaginationFailure(failure.errmessage));
      }
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
