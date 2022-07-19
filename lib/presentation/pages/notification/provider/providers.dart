import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_sns_project/constant/strings.dart';

final notificationTabsProvider = Provider(
  (_) => [
    const Tab(
      text: NOTIFICATION_TAB_ONE_STRING,
    ),
    const Tab(
      text: NOTIFICATION_TAB_ONE_STRING,
    ),
  ],
);
