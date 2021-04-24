import 'package:flutter/material.dart';
import 'package:sphecs/screens/home_page.dart';

import 'screens/filter_page.dart';
import 'screens/recommendation_page.dart';
import 'screens/wishlist_page.dart';

void main() => runApp(Sphecs());

class Sphecs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/recommendation': (context) => RecommendationPage(),
        '/filter': (context) => FilterPage(),
        '/wishlist': (context) => WishlistPage(),
      },
      theme: ThemeData.light().copyWith(
        // primaryColor: Color(0xFF0A0E21),
        // scaffoldBackgroundColor: Color(0xFF0A0E21),
        // accentColor: Colors.purple,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: Colors.black, fontFamily: 'OpenSans'),
        ),
        textTheme: TextTheme(
          // bodyText1: TextStyle(fontFamily: 'OpenSans'),
          bodyText2: TextStyle(color: Colors.black, fontFamily: 'OpenSans'),
        ),
        highlightColor: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.deepPurple,
          elevation: 0,
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
