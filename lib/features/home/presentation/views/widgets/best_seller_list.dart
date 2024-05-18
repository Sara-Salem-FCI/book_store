import 'package:bookly/features/home/presentation/manager/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constants.dart';
import '../../manager/best_seller_books_cubit/best_seller_books_states.dart';
import 'best_seller_list_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksStates>(
      builder: (BuildContext context, state) {
        if(state is SuccessBestSellerBooksState) {
          return SliverList.separated(
            itemBuilder: (context, index) => BestSellerListItem(book: state.books[index],),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: state.books.length,
          );
        } else if(state is FailureBestSellerBooksState) {
          return SliverToBoxAdapter(child: Text(state.errMessage));
        } else {
          return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator( color: kActiveColor, )));
        }
      },
    );
  }
}
