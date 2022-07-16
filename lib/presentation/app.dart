import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_sns_project/constant/config/application_dark_theme.dart';
import 'package:my_sns_project/constant/config/application_theme.dart';
import 'package:my_sns_project/constant/strings.dart';
import 'package:my_sns_project/presentation/pages/home/home_page.dart';
import 'package:my_sns_project/router/error_page.dart';

class App extends StatelessWidget {
  App({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: appTitleString,
        theme: getApplicationTheme(),
        darkTheme: getApplicationDarkTheme(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      );
  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  );
}
