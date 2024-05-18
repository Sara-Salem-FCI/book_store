import '../../../data/models/book_model/book_model.dart';

abstract class BestSellerBooksStates {}

class BestSellerBooksInitialState extends BestSellerBooksStates {}

class LoadingBestSellerBooksState extends BestSellerBooksStates {}

class FailureBestSellerBooksState extends BestSellerBooksStates {}

class SuccessBestSellerBooksState extends BestSellerBooksStates {
  final List<BookModel> books;
  SuccessBestSellerBooksState(this.books);
}