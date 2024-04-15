import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class BestSellerListHeader extends StatelessWidget {
  const BestSellerListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              'Best Seller',
              style: AppStyles.activeStyle
          ),
          Text(
            'Latest',
            style: AppStyles.inActiveStyle,
          ),
          Text(
            'Coming Soon',
            style: AppStyles.inActiveStyle,
          ),
        ]
    );
  }
}
