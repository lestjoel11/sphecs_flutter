import 'package:flutter/material.dart';

class HamburgerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: Container(
        color: Colors.green,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Recommendation'),
              onTap: () {
                Navigator.pushNamed(context, "/recommendation");
                print("Recommendation");
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            ListTile(
              title: Text('Filter'),
              onTap: () {
                Navigator.pushNamed(context, "/filter");
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            ListTile(
              title: Text('Wishlist'),
              onTap: () {
                Navigator.pushNamed(context, "/wishlist");
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
          ],
        ),
      ),
    );
  }
}
