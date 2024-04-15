import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/constants.dart';
import 'custom_button.dart';

class BookDetailsHeader extends StatelessWidget {
  const BookDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Change by design',
              style: AppStyles.activeStyle,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: kInactiveColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_add_rounded,
                color: kInactiveColor,
              ),
            ),
          ],
        ),
        const Text(
          'Tim Brown',
          style: AppStyles.inActiveStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            CustomButton(
              text: 'Design',
              onPressed: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            CustomButton(
              text: 'User Interface',
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
