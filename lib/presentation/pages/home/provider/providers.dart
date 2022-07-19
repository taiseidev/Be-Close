import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_sns_project/constant/strings.dart';

final tabsProvider = Provider(
  (_) => [
    const Tab(
      text: HOME_TAB_ONE_STRING,
    ),
    const Tab(
      text: HOME_TAB_TWO_STRING,
    ),
    const Tab(
      text: HOME_TAB_THREE_STRING,
    ),
  ],
);
