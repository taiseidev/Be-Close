import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_sns_project/constant/strings.dart';

final tabsProvider = Provider(
  (_) => [
    const Tab(
      text: tabTextOneString,
    ),
    const Tab(
      text: tabTextTwoString,
    ),
    const Tab(
      text: tabTextThreeString,
    ),
  ],
);
