import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../models/book_model/BookModel.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchForYouBooks();
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
}
