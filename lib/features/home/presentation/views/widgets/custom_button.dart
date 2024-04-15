import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
final String text;
final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: const Color(0xff665230),
      height: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),

      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyles.inActiveStyle.copyWith(
          color: const Color(0xffF9C975),
        ),
      ),
    );
  }
}
