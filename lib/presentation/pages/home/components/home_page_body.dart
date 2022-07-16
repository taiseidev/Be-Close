import 'package:flutter/material.dart';
import 'package:my_sns_project/presentation/pages/home/components/home_page_tab_first.dart';
import 'package:my_sns_project/presentation/pages/home/components/home_page_tab_second.dart';
import 'package:my_sns_project/presentation/pages/home/components/home_page_tab_third.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        HomePageTabFirst(),
        HomePageTabSecond(),
        HomePageTabThird(),
      ],
    );
  }
}
