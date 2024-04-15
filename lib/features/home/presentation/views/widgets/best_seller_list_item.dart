import 'package:bookly/features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routers.dart';
import '../../../../../core/utils/app_styles.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouters.kBookDetailsView);
        },
        child: Row(
          children: [
             SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.15,
              child: const AspectRatio(
                aspectRatio: 80/120,
                child: Image(
                  image: AssetImage("assets/images/img.png"),
                ),
              ),
            ),
            const SizedBox(width: 20,),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Change by design',
                    style: AppStyles.activeStyle,
                  ),
                  const Text(
                    'Tim Brown',
                    style: AppStyles.inActiveStyle,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Rs.780',
                      style: AppStyles.activeStyle,
                    ),
                  ),
                  Row(
                    children: [
                      CustomButton(text: 'Design', onPressed: () {},),
                      const SizedBox(width: 10,),
                      CustomButton(text: 'User Interface', onPressed: () {},),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
