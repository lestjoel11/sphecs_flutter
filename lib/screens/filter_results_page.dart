import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sphecs/components/filter_options_expansion_tile.dart';
import 'package:sphecs/services/smartphone_data.dart';

class FilterResultsPage extends StatefulWidget {
  @override
  _FilterResultsPageState createState() => _FilterResultsPageState();
}

List<Widget> resultsWidget = [];

class _FilterResultsPageState extends State<FilterResultsPage> {
  renderResult(
    List<List<dynamic>> results,
  ) {
    var dts = DTS(results.length, results);
    int _rowPerPage = 10;
    if (results.length > 0) {
      return SingleChildScrollView(
        child: Center(
          child: PaginatedDataTable(
            horizontalMargin: 10,
            dataRowHeight: 150,
            columnSpacing: 2,
            columns: <DataColumn>[
              DataColumn(
                  label: Text(
                "Smartphone",
                style: TextStyle(fontSize: 17),
              )),
              DataColumn(
                  label: Text(
                "Picture",
                style: TextStyle(fontSize: 17),
              )),
            ],
            source: dts,
            rowsPerPage: _rowPerPage,
          ),
        ),
      );
    } else {
      return Text("No results found please adjust your settings");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Filter Results"),
            centerTitle: true,
            actions: <Widget>[
              TextButton(
                child: Text(
                  "Done",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  clearHistory();
                  Navigator.pushNamed(context, "/");
                },
              ),
            ],
          ),
          body: Center(
            child: renderResult(SmartphoneData()
                .results(SmartphoneData.data, query, columnsSet)),
          )),
    );
  }
}

class DTS extends DataTableSource {
  @override
  int rows;
  List<List<dynamic>> results;

  DTS(this.rows, this.results);

  DataRow getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Container(
        width: 285,
        child: Text(
          results[index][1] +
              " - " +
              results[index][7].toString() +
              "\n" +
              results[index][13] +
              "\n" +
              results[index][16],
          style: TextStyle(fontSize: 15),
        ),
      )),
      DataCell(Image(
        image: NetworkImage(results[index][2]),
        width: 100,
      )),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => rows;

  @override
  int get selectedRowCount => 0;
}
