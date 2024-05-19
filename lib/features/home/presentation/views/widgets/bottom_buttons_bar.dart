import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/constants.dart';

class BottomButtonsBar extends StatelessWidget {
  const BottomButtonsBar({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      color: const Color(0xff032924),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: kActiveColor,
                    )),
                child: Text(
                  'Free',
                  style: AppStyles.activeStyle.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: MaterialButton(
                color: kActiveColor,
                onPressed: () async {
                  if (!await launchUrl(
                          Uri.parse(book.volumeInfo!.previewLink!)) ||
                      book.volumeInfo?.previewLink == null) {
                  } else {
                    await launchUrl(Uri.parse(book.volumeInfo!.previewLink!));
                  }
                },
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  book.volumeInfo?.previewLink == null
                      ? 'Not Available'
                      : 'PREVIEW',
                  style: AppStyles.inActiveStyle.copyWith(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
