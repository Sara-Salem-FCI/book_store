import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class ForYouBooksStates{}
class ForYouBooksInitial extends ForYouBooksStates{}
class LoadingForYouBooksState extends ForYouBooksStates{}
class SuccessForYouBooksState extends ForYouBooksStates{
  SuccessForYouBooksState(List<BookModel> books);
}
class FailureForYouBooksState extends ForYouBooksStates{}