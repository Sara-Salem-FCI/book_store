
import '../../../data/models/book_model/BookModel.dart';

abstract class ForYouBooksStates{}
class ForYouBooksInitial extends ForYouBooksStates{}
class LoadingForYouBooksState extends ForYouBooksStates{}
class SuccessForYouBooksState extends ForYouBooksStates{
  final List<BookModel> books;
  SuccessForYouBooksState(this.books);
}
class FailureForYouBooksState extends ForYouBooksStates{
  final String errMessage;
  FailureForYouBooksState(this.errMessage);
}