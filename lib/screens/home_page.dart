import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sphecs/constants.dart';

import '../components/hamburger_menu.dart';
import '../components/phone_card.dart';

//TODO: ADD FLUTTER SLIDEABLE TO ALL CARDS OF THE RESULT AND ADD -ADD ALL TO LIsT BUTTON
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple[400],
          brightness: Brightness.dark,
          title: Text("Home"),
        ),
        drawer: HamburgerMenu(),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "Top Brands",
                  style: kPageTitleText,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: PhoneCard(
                    phoneName: "Galaxy Note 9",
                    brand: "Samsung",
                  ),
                ),
                Expanded(
                  child: PhoneCard(
                    phoneName: "Galaxy Note 9",
                    brand: "Samsung",
                  ),
                ),
              ],
            ),
            Container(
              child: ElevatedButton(
                  child: Text("Go to Data"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/database");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
//TODO: ADD MINIMAL FONT
//TODO PADDING TO RECENT ACTIVITY
