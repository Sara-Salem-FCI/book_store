import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/constants.dart';
import 'custom_button.dart';

class BookDetailsHeader extends StatelessWidget {
  const BookDetailsHeader({super.key, required this.book});
final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Text(
                book.volumeInfo!.title!,
                style: AppStyles.activeStyle,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: kInactiveColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_add_rounded,
                color: kInactiveColor,
              ),
            ),
          ],
        ),
        Text(
          book.volumeInfo!.authors![0],
          style: AppStyles.inActiveStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            CustomButton(
              text: book.volumeInfo!.pageCount.toString(),
              onPressed: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            // CustomButton(
            //   text: 'User Interface',
            //   onPressed: () {},
            // ),
          ],
        ),
      ],
    );
  }
}
