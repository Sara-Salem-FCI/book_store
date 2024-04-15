import 'package:bookly/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'best_seller_list.dart';
import 'best_seller_list_header.dart';
import 'custom_appbar.dart';
import 'for_you_list.dart';
import 'for_you_list_header.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppBar(),
                      ForYouListHeader(),
                      SizedBox(height: 8),
                      ForYouList(),
                      SizedBox(height: 40,),
                      BestSellerListHeader(),
                    ],
                  ),
                ),
              ),
              BestSellerList(),
              SliverToBoxAdapter(child: SizedBox(height: 20),),
            ]
          ),
        ),
        CustomBottomNavigationBar(),
      ],
    );
  }
}
