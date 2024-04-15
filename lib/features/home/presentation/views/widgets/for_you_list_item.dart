import 'package:flutter/material.dart';

class ForYouListItem extends StatelessWidget {
  const ForYouListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 112/168,
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.2,
        child: const Image(image: AssetImage("assets/images/img.png")),
      ),
    );
  }
}
