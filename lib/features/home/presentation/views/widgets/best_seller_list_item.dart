import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routers.dart';
import '../../../../../core/utils/app_styles.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key, required this.book});
final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouters.kBookDetailsView);
        },
        child: Row(
          children: [
             SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.15,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: AspectRatio(
                  aspectRatio: 80/120,
                  child: CachedNetworkImage(
                    imageUrl:book.volumeInfo!.imageLinks!.thumbnail!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20,),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.volumeInfo!.title!,
                    style: AppStyles.activeStyle,
                  ),
                  Text(
                    book.volumeInfo!.authors![0],
                    style: AppStyles.inActiveStyle,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Free',
                      style: AppStyles.activeStyle,
                    ),
                  ),
                  Row(
                    children: [
                      CustomButton(text: book.volumeInfo!.pageCount.toString(), onPressed: () {},),
                      const SizedBox(width: 10,),
                      //CustomButton(text: book.volumeInfo!.categories![0], onPressed: () {},),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
