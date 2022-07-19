import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_sns_project/constant/strings.dart';
import 'package:my_sns_project/presentation/pages/notification/provider/providers.dart';

class NotificationPageAppBar extends ConsumerWidget {
  const NotificationPageAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      title: const Text(
        NOTIFICATION_TITLE_STRING,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      bottom: TabBar(
        splashFactory: NoSplash.splashFactory,
        isScrollable: true,
        tabs: ref.watch(notificationTabsProvider),
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Colors.white,
      ),
    );
  }
}
