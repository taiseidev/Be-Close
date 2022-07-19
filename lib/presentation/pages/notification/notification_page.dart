import 'package:flutter/material.dart';
import 'package:my_sns_project/presentation/pages/notification/components/notification_page_app_bar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: const Size(30, 100),
          child: NotificationPageAppBar(),
        ),
        body: TabBarView(
          children: [
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
