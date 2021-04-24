import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListOptions extends StatefulWidget {
  ListOptions(
      {@required this.featureTitle,
      @required this.featureOptions,
      this.interaction,
      this.checkboxVal});

  String featureTitle;
  List<dynamic> featureOptions;
  String interaction;
  bool checkboxVal;

  @override
  _ListOptionsState createState() => _ListOptionsState();
}

//TODO: RENDER EXPANSION TILE
class _ListOptionsState extends State<ListOptions> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.featureTitle,
        style: TextStyle(
            fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
      children: [
        for (var i = 0; i < widget.featureOptions.length; i++)
          Text(widget.featureOptions[i]),
        Checkbox(
            activeColor: Colors.deepPurpleAccent,
            value: widget.checkboxVal,
            onChanged: (bool value) {
              setState(() {
                widget.checkboxVal = value;
              });
            })
      ],
    );
  }
}
