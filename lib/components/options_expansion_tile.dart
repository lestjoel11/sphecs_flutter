import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListOptions extends StatefulWidget {
  String featureTitle;
  List<dynamic> featureOptions;
  String interaction;
  bool checkboxVal;

  ListOptions(
      {@required this.featureTitle,
      this.featureOptions,
      this.interaction,
      this.checkboxVal = false});

  @override
  _ListOptionsState createState() => _ListOptionsState();
}

//TODO: RENDER EXPANSION TILE
class _ListOptionsState extends State<ListOptions> {
  @override
  Widget build(BuildContext context) {
    return renderOptions(widget);
  }
}

renderOptions(widget) {
  print(widget.featureTitle + widget.featureOptions.length.toString());
  if (widget.featureOptions == null ||
      widget.featureOptions == [] ||
      widget.featureOptions.length == 0) {
    return ListTile(
      title: Text(
        widget.featureTitle,
        style: TextStyle(
            fontSize: 18.0, color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    );
  } else {
    return ExpansionTile(
      title: Text(
        widget.featureTitle,
        style: TextStyle(
            fontSize: 18.0, color: Colors.grey, fontWeight: FontWeight.w600),
      ),
      children: [
        for (var i = 0; i < widget.featureOptions.length; i++)
          Text(widget.featureOptions[i]),
        Checkbox(
            activeColor: Colors.deepPurpleAccent,
            value: widget.checkboxVal,
            onChanged: (bool value) {
              // setState(() {
              //   widget.checkboxVal = value;
              // });
            })
      ],
    );
  }
}
