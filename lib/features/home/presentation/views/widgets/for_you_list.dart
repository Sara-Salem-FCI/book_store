import 'package:flutter/material.dart';

import 'for_you_list_item.dart';

class ForYouList extends StatelessWidget {
  const ForYouList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: ListView.separated(
        itemBuilder: (context, index) => const ForYouListItem(),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 16);
        },
      ),
    );
  }
}
