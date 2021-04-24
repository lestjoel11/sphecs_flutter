import 'package:flutter/material.dart';

class PhoneCard extends StatelessWidget {
  PhoneCard({this.phoneName, this.brand});
  final String phoneName;
  final String brand;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 100,
      child: PhysicalModel(
        color: Colors.white,
        child: Card(
          //TODO: ADD SHADOW COLOUR AFTER THEME OF APP IS DONE
          //TODO: ADD IMAGE TO CARD
          //TODO: ADD IOS or ANDROID LOGO TO LEADING
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  phoneName,
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 0.3,
                      fontFamily: 'OpenSans'),
                ),
                subtitle: Row(
                  children: [Text(brand)],
                ),
              ),
            ],
          ),
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        ),
      ),
    );
  }
}
