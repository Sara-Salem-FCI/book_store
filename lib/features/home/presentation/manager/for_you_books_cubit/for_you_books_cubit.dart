import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../data/models/book_model/BookModel.dart';
import 'for_you_books_states.dart';

class ForYouBooksCubit extends Cubit<ForYouBooksStates> {

  ForYouBooksCubit(this.homeRepo) : super(ForYouBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchForYouBooks() async {
    emit(LoadingForYouBooksState());
    Either<Failure, List<BookModel>> result = await homeRepo.fetchForYouBooks();
    result.fold((failure) {
      emit(FailureForYouBooksState(failure.errorMessage));
    }, (books) {
      emit(SuccessForYouBooksState(books));
    });
  }
}