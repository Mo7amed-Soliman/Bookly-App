import 'package:bookly_app/core/networking/die_faliure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Faliure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Faliure, List<BookModel>>> fetchBestSellerBooks();
}
