import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(book: book,),
    );
  }
}
