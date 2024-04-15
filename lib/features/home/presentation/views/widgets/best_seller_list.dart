import 'package:flutter/cupertino.dart';

import 'best_seller_list_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => const BestSellerListItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: 10,
    );
  }
}
