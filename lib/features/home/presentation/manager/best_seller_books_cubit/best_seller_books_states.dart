import '../../../data/models/book_model/BookModel.dart';

abstract class BestSellerBooksStates {}

class BestSellerBooksInitialState extends BestSellerBooksStates {}

class LoadingBestSellerBooksState extends BestSellerBooksStates {}

class FailureBestSellerBooksState extends BestSellerBooksStates {
  final String errMessage;
  FailureBestSellerBooksState(this.errMessage);
}

class SuccessBestSellerBooksState extends BestSellerBooksStates {
  final List<BookModel> books;
  SuccessBestSellerBooksState(this.books);
}