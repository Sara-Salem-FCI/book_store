import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../models/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchForYouBooks() async {
    try {
      var data = await apiService.get(endPoint: 'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest &q=programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } on Exception catch (e) {
      if(e is DioError){
        return Left(ServerFailure.fromDioError(e));
      }else{
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }
}