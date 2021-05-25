import 'dart:collection';

import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:sphecs/components/filter_options_expansion_tile.dart';

// ignore: must_be_immutable
class SmartphoneData {
  static List<List<dynamic>> data = [];
  static List<String> headers = [
    "Brand",
    "Announced Date",
    "Body Protection",
    "3.5mm jack",
    "Stylus/Pen",
    "USB Port",
    "IP Certified(Dust/Water proof)",
    "Sensors",
    "Physical Keyboard",
    "OS",
    "CPU",
    "GPU",
    "Storage and RAM",
    "Internal Storage Version",
    "SD Card slot",
    "Charging speed",
    "Battery Size",
    "Screen Type",
    "Refresh Rate",
    "Dual Screen",
    "Aspect Ratio",
    "Rear Camera Setup",
    "Selfie Camera Setup",
    "Rear Cam Features",
    "Selfie Cam Features",
    "5G",
    "SIM Setup",
    "Bluetooth Version",
    "GPS",
    "NFC",
    "Radio"
  ];
  var dataLoad = false;
//async method to load data from local csv file
  loadAsset() async {
    final myData = await rootBundle.loadString("smartphone_data/main.csv");
    List<List<dynamic>> table = CsvToListConverter().convert(myData);
    data = table;
    dataLoad = true;
  }

  getHeaders() async {
    await loadAsset();
    if (dataLoad) {
      return headers;
    }
  }

  List getOptions(List<List<dynamic>> data, var index) {
    Set<String> optionsName = new Set();
    for (var i = 1; i < data.length; i++) {
      final stringFeature = data[i][index].toString();
      final eachWord = stringFeature.split(",");
      for (var i = 0; i < eachWord.length; i++) {
        if (eachWord[i] != '') {
          optionsName.add(eachWord[i].toLowerCase().trimLeft());
        }
      }
    }
    final sortOptions = new SplayTreeSet.from(optionsName);
    optionsName.clear();
    return sortOptions.toList();
  }

  List results(List<List<dynamic>> data, List<Map<int, List<String>>> queries,
      Set<int> columnIndex) {
    List<List<dynamic>> singleFilteresults = [];
    List<List<dynamic>> multifilteredResults = [];
    if (queries.length != 0) {
      List<int> columnCount = columnIndex.toList();
      for (int criteria = 0; criteria < 1; criteria++) {
        //read queries
        if (singleFilteresults.length == 0) {
          for (var eachSelection = 0;
              eachSelection < queries[0][columnCount[criteria]].length;
              eachSelection++) {
            for (var i = 1; i < data.length; i++) {
              //read rows
              //if first instance run on data, rest on the filtered list
              if (queries[0][columnCount[criteria]].isNotEmpty) {
                final stringFeature = data[i][columnCount[criteria]].toString();
                final lisOfWords = stringFeature.split(",");
                for (String word in lisOfWords) {
                  if (word.isNotEmpty) {
                    if (word.toUpperCase().trimLeft() ==
                        queries[0][columnCount[criteria]][eachSelection]
                            .toUpperCase()) {
                      singleFilteresults.add(data[i].toList());
                    }
                  }
                }
              }
            }
          }
        }
      }
      if (queries.length > 1 && singleFilteresults.length > 1) {
        List<int> columnCount = columnIndex.toList();
        for (var i = 1; i < queries.length; i++) {
          for (var eachSelection = 0;
              eachSelection < queries[i][columnCount[i]].length;
              eachSelection++) {
            for (List<dynamic> phone in singleFilteresults) {
              final stringFeature = phone[columnCount[i]].toString();
              final listOfWords = stringFeature.split(",");

              for (String word in listOfWords) {
                if (word.isNotEmpty) {
                  if (word.toUpperCase().trimLeft() ==
                      queries[i][columnCount[i]][eachSelection].toUpperCase()) {
                    multifilteredResults.add(phone);
                  }
                }
              }
            }
            singleFilteresults.clear();
            singleFilteresults.addAll(multifilteredResults);
            if (i != queries.length - 1) {
              multifilteredResults.clear();
            }
          }
        }
      }
    }
    columnsSet.clear();
    if (queries.length == 1) {
      return singleFilteresults;
    } else {
      print(multifilteredResults);
      return multifilteredResults;
    }
  }
}
