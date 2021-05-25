import 'package:flutter/material.dart';

//TODO: ADD FLUTTER SLIDEABLE TO ALL CARDS OF THE RESULT AND ADD -ADD ALL TO LIsT BUTTON
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: new Container(),
          centerTitle: true,
          title: Text("Home"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(52.0),
                child: FloatingActionButton.extended(
                  elevation: 2.0,
                  backgroundColor: const Color(0xff03dac6),
                  onPressed: () {
                    Navigator.pushNamed(context, "/loading");
                  },
                  label: Text(
                    'Get Started with filtering',
                    style: TextStyle(fontSize: 18),
                  ),
                  icon: Icon(Icons.filter_alt_outlined),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//TODO: ADD MINIMAL FONT
//TODO PADDING TO RECENT ACTIVITY
