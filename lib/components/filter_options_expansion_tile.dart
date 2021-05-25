import 'package:flutter/material.dart';

clearHistory() {
  query.clear();
  columnsSet.clear();
}

List<Map<int, List<String>>> query = [];
Set<int> columnsSet = {};

// ignore: must_be_immutable
class ListOptions extends StatefulWidget {
  String featureTitle;
  List<dynamic> featureOptions;
  List<bool> checkboxValList;
  String interaction;
  bool isChecked;
  int column;

  ListOptions(
      {@required this.featureTitle,
      this.featureOptions,
      this.checkboxValList,
      this.interaction,
      this.column,
      this.isChecked = false});

  @override
  _ListOptionsState createState() => _ListOptionsState();
}

class SelectedOptions {
  List<Map<int, dynamic>> queries;
  int columnIndex;

  SelectedOptions(this.queries, this.columnIndex);
}

class _ListOptionsState extends State<ListOptions> {
  populateCheckboxVal(int length, widget) {
    for (var i = 0; i < length; i++) {
      widget.checkboxValList.add(false);
    }
  }

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
            String value = "Yes";
            widget.isChecked = !widget.isChecked;
            bool keyExists = false;
            if (query.length == 0) {
              Map<int, List<String>> tempMap = {
                widget.column: [value],
              };
              query.add(tempMap);
            } else {
              for (Map<int, List<String>> map in query) {
                if (map.containsKey(widget.column)) {
                  keyExists = true;
                  if (map[widget.column].isNotEmpty) {
                    int currentIndex = map[widget.column].indexOf(value);
                    map[widget.column].removeAt(currentIndex);
                    if (map[widget.column].isEmpty) {
                      map.clear();
                    }
                  } else {
                    map[widget.column].add(value);
                  }
                }
              }
              if (!keyExists) {
                Map<int, List<String>> tempMap = {
                  widget.column: [value],
                };
                query.add(tempMap);
                keyExists = true;
              }
            }
            print(query);
          });
        },
        value: widget.isChecked,
        activeColor: const Color(0xff3baea2),
      );
    } else {
      return ExpansionTile(
        title: Text(
          widget.featureTitle,
          style: TextStyle(
              fontSize: 18.0, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        children: [
          for (var i = 0; i < widget.featureOptions.length; i++)
            CheckboxListTile(
              value: widget.checkboxValList[i],
              title: Text(
                widget.featureOptions[i].toString().toUpperCase(),
                style: TextStyle(letterSpacing: 0.3, color: Colors.white),
              ),
              onChanged: (bool value) {
                setState(() {
                  widget.checkboxValList[i] = !widget.checkboxValList[i];
                  bool keyExists = false;
                  if (query.length == 0) {
                    Map<int, List<String>> tempMap = {
                      widget.column: [widget.featureOptions[i]],
                    };
                    query.add(tempMap);
                  } else {
                    for (Map<int, List<String>> map in query) {
                      if (map.containsKey(widget.column)) {
                        keyExists = true;
                        if (map[widget.column]
                            .contains(widget.featureOptions[i])) {
                          int currentIndex = map[widget.column]
                              .indexOf(widget.featureOptions[i]);
                          map[widget.column].removeAt(currentIndex);
                          if (map[widget.column].isEmpty) {
                            map.clear();
                          }
                        } else {
                          map[widget.column].add(widget.featureOptions[i]);
                        }
                      }
                    }
                    if (!keyExists) {
                      Map<int, List<String>> tempMap = {
                        widget.column: [widget.featureOptions[i]],
                      };
                      query.add(tempMap);
                      keyExists = true;
                    }
                  }
                  print(query);
                });
              },
              activeColor: const Color(0xff3baea2),
            )
        ],
      );
    }
  }
}
