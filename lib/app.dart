import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_sns_project/constant/config/application_theme.dart';
import 'package:my_sns_project/router/error_page.dart';

class App extends StatelessWidget {
  App({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: getApplicationTheme(),
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      );
  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => MyHomePage(),
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
