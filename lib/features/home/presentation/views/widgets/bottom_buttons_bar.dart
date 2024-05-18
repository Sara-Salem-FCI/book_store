import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/constants.dart';

class BottomButtonsBar extends StatelessWidget {
  const BottomButtonsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      color: const Color(0xff032924),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: kActiveColor,
                    )
                ),
                child: Text(
                  'Free',
                  style: AppStyles.activeStyle.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: MaterialButton(
                color: kActiveColor,
                onPressed: () {},
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'PREVIEW',
                  style: AppStyles.inActiveStyle.copyWith(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
