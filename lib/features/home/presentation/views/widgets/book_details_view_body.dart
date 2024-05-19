import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_header.dart';
import 'package:bookly/features/home/presentation/views/widgets/bottom_buttons_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/for_you_list_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.21),
                    child: ForYouListItem(book: book, ),),
                  const SizedBox(height: 20),
                  BookDetailsHeader(book: book,),
                  const SizedBox(height: 20),
                  Text(
                    book.volumeInfo!.description!,
                    style: AppStyles.activeStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        BottomButtonsBar(book: book,),
      ],
    );
  }
}
