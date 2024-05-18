import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';
import 'best_seller_books_states.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksStates> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitialState());
  final HomeRepo homeRepo;

  Future<void> fetchForYouBooks() async {
    emit(LoadingBestSellerBooksState());
    Either<Failure, List<BookModel>> result = await homeRepo.fetchForYouBooks();
    result.fold((failure) {
      emit(FailureBestSellerBooksState());
    }, (books) {
      emit(SuccessBestSellerBooksState(books));
    });
  }
}