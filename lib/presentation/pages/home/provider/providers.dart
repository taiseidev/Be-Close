import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tabsProvider = Provider(
  (_) => [
    const Tab(
      text: 'Today',
    ),
    const Tab(
      text: "TimeLine",
    ),
    const Tab(
      text: "Favorite",
    ),
  ],
);
