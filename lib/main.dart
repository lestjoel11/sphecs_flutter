import 'package:flutter/material.dart';
import 'package:sphecs/screens/filter_results_page.dart';
import 'package:sphecs/screens/home_page.dart';
import 'package:sphecs/screens/loading_screen.dart';

import 'screens/filter_page.dart';

void main() => runApp(Sphecs());

class Sphecs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/filter': (context) => FilterPage(),
        '/filterResults': (context) => FilterResultsPage(),
        '/loading': (context) => LoadingScreen()
      },
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xff03dac6),
          elevation: 0,
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
