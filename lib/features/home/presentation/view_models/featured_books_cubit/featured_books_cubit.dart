import 'package:bookly_app/core/networking/die_faliure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitial());
  final HomeRepoImpl _homeRepo;

  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FeaturedBooksLoading());
    } else {
      emit(FeaturedBooksPaginationLoading());
    }
    Either<Failure, List<BookModel>> result =
        await _homeRepo.fetchFeaturedBooks(pageNumber: pageNumber);
    result.fold(
      (failure) {
        if (pageNumber == 0) {
          emit(FeaturedBooksFailure(failure.errmessage));
        } else {
          emit(FeaturedBooksPaginationFailure(failure.errmessage));
        }
      },
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
