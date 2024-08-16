import 'package:bookly_app/core/networking/die_faliure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepoImpl homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    Either<Failure, List<BookModel>> result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(NewestBooksFailure(failure.errmessage)),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
