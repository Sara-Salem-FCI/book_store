import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ForYouListHeader extends StatelessWidget {
  const ForYouListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'For you',
          style: AppStyles.activeStyle,
        ),
        const Spacer(),
        Text(
          'view all',
          style: AppStyles.inActiveStyle.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: const Color(0xff0B8C7C),
          ),
        ),
      ],
    );
  }
}
