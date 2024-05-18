import 'package:flutter/material.dart';

class ForYouListItem extends StatelessWidget {
  const ForYouListItem({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 112/168,
      child: SizedBox(
        child: Image(image: AssetImage('assets/images/book.png'),),
      ),
    );
  }
}
