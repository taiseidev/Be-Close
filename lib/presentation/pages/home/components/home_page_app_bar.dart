import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:my_sns_project/presentation/ui_core/date_format.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Badge(
        position: BadgePosition.topEnd(
          top: 5,
          end: 0,
        ),
        badgeContent: const Text(
          '2',
          style: TextStyle(color: Colors.white),
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            size: 40,
          ),
          color: Colors.white,
        ),
      ),
      title: Text(
        yyyyMMddDateFormat.format(DateTime.now()),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: const Hero(
            tag: 'profile',
            child: CircleAvatar(
              radius: 20,
              // user profile image
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1473625247510-8ceb1760943f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1411&q=80'),
            ),
          ),
        ),
      ],
    );
  }
}
