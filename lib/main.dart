import 'package:flutter/material.dart';
import 'package:tourism_app/models/tourism.dart';
import 'package:tourism_app/screen/detail/detail_screen.dart';
import 'package:tourism_app/static/navigation_route.dart';

import 'package:tourism_app/screen/home/home_screen.dart';
import 'package:tourism_app/style/typography/theme/tourism_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: TourismTheme.lightTheme,
      darkTheme: TourismTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: NavigationRoute.homeRoute.name,
      routes: {
        NavigationRoute.homeRoute.name: (context) => const HomeScreen(),
        NavigationRoute.detailRoute.name: (context) => DetailScreen(
          tourism: ModalRoute.of(context)?.settings.arguments as Tourism,
        ),
      },
    );
  }
}
