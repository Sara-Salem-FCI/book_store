import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, bottom: 30),
      child: Row(
        children: [
          Image(image: AssetImage("assets/images/logo.png"), height: 30,),
          Spacer(),
          Icon(Icons.search, size: 30, color: kInactiveColor,),
        ]
      ),
    );
  }
}
