import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routers.dart';
import '../../../../../core/utils/constants.dart';
import '../../../data/models/book_model/BookModel.dart';

class ForYouListItem extends StatelessWidget {
  const ForYouListItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: 112/168,
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouters.kBookDetailsView, extra: book);
          },
          child: CachedNetworkImage(
            imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(
                color: kActiveColor,
              ),
            ),
            errorWidget: (context, url, error) => const Icon(
                Icons.error,
                color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
