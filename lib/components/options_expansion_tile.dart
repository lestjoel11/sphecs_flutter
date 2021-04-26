import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListOptions extends StatefulWidget {
  String featureTitle;
  List<dynamic> featureOptions;
  List<bool> checkboxValList;
  String interaction;
  bool isChecked;

  ListOptions(
      {@required this.featureTitle,
      this.featureOptions,
      this.checkboxValList,
      this.interaction,
      this.isChecked = false});

  @override
  _ListOptionsState createState() => _ListOptionsState();
}

class _ListOptionsState extends State<ListOptions> {
  populateCheckboxVal(int length, widget) {
    for (var i = 0; i < length; i++) {
      widget.checkboxValList.add(false);
    }
  }

  List<Map<String, String>> selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    populateCheckboxVal(widget.featureOptions.length, widget);
    if (widget.featureOptions == null ||
        widget.featureOptions == [] ||
        widget.featureOptions.length == 0) {
      return CheckboxListTile(
        title: Text(
          widget.featureTitle,
          style: TextStyle(
              fontSize: 18.0, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        contentPadding: EdgeInsets.fromLTRB(15, 0, 8, 0),
        onChanged: (bool value) {
          setState(() {
            widget.isChecked = value;
          });
        },
        value: widget.isChecked,
        activeColor: Colors.deepPurpleAccent,
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
            CheckboxListTile(
              value: widget.checkboxValList[i],
              title: Text(
                widget.featureOptions[i],
                style: TextStyle(letterSpacing: 0.3, color: Colors.blueGrey),
              ),
              onChanged: (bool value) {
                setState(() {
                  widget.checkboxValList[i] = value;
                  print(widget.featureOptions[i]);
                });
              },
            ),
        ],
      );
    }
  }
}
