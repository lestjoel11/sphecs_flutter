import 'dart:collection';

import 'package:csv/csv.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class SmartphoneData {
  static List<List<dynamic>> data = [];
  List<String> headers = [];
  var dataLoad = false;

  loadAsset() async {
    final myData = await rootBundle.loadString("smartphone_data/main.csv");
    List<List<dynamic>> table = CsvToListConverter().convert(myData);
    data = table;
    //get headers from csv
    for (var i = 0; i < data[0].length; i++) {
      headers.add(data[0][i]);
    }
    dataLoad = true;
  }

  //TODO: MAKE IF STATEMENTS FOR EACH FUNCTION CHECKING LENGTH IF APP CRASHES
  getHeaders() {
    loadAsset();
    return headers;
  }

  List getScreenType(List<List<dynamic>> data, var index) {
    Set<String> screenType = new Set();
    loadAsset();
    for (var i = 1; i < data.length; i++) {
      final stringFeature = data[i][index].toString();
      final eachWord = stringFeature.split(",");
      for (var i = 0; i < eachWord.length; i++) {
        if (eachWord[i] != '') {
          screenType.add(eachWord[i].trimLeft());
        }
      }
    }
    final sortedScreenType = new SplayTreeSet.from(screenType);
    screenType.clear();
    return sortedScreenType.toList();
  }
}
