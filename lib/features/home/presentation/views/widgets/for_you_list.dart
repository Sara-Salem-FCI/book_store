import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/presentation/manager/for_you_books_cubit/for_you_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/for_you_books_cubit/for_you_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'for_you_list_item.dart';

class ForYouList extends StatelessWidget {
  const ForYouList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForYouBooksCubit,ForYouBooksStates>(
      builder: (BuildContext context, state) {
        if(state is SuccessForYouBooksState) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.2,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => ForYouListItem(imagerUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 16);
              },
            ),
          );
        } else if(state is FailureForYouBooksState){
          return Text(state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator(
            color: kActiveColor,
          ));
        }
      },
    );
  }
}
