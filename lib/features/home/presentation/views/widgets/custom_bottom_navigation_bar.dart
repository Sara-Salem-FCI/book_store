import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.071,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.dashboard,
                size: 30,
                color: kActiveColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
                color: kInactiveColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_add_rounded,
                size: 30,
                color: kInactiveColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_rounded,
                size: 30,
                color: kInactiveColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
