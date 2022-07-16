import 'package:flutter/material.dart';
import 'package:my_sns_project/presentation/pages/home/components/home_page_app_bar.dart';
import 'package:my_sns_project/presentation/pages/home/components/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        appBar: const PreferredSize(
          preferredSize: Size(30, 100),
          child: HomePageAppBar(),
        ),
        body: HomePageBody(),
      ),
    );
  }
}
