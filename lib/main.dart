import 'package:flutter/material.dart';
import 'package:navigator_manager/pages/blue_page.dart';
import 'package:navigator_manager/pages/card_view_responsive.dart';
import 'package:navigator_manager/pages/green_page.dart';
import 'package:navigator_manager/pages/home_page.dart';
import 'package:navigator_manager/pages/red_page.dart';
import 'package:navigator_manager/pages/yellow_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,

      initialRoute: CardViewResponsive.route,
      routes: {
        CardViewResponsive.route : (context) => const CardViewResponsive(),
        HomePage.route : (context) => const HomePage(),
        RedPage.route : (context) => const RedPage(),
        BluePage.route : (context) => const BluePage(),
        GreenPage.route : (context) => const GreenPage(),
        YellowPage.route : (context) => const YellowPage(),
      },
    );
  }
}


