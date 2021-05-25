import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sphecs/components/filter_options_expansion_tile.dart';
import 'package:sphecs/services/smartphone_data.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> with TickerProviderStateMixin {
  List<String> emptyList = [];

  List<bool> checkboxValList = [];

  List<Widget> listOptions = [];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  filterSubmit() {}
  bool isChecked = false;

  List<ListOptions> buildOptionsObj = [
    ListOptions(
      featureTitle: SmartphoneData.headers[0],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 0),
      checkboxValList: [],
      column: 0,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[1],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 7),
      checkboxValList: [],
      column: 7,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[2],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 46),
      checkboxValList: [],
      column: 46,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[3],
      featureOptions: [],
      isChecked: false,
      column: 26,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[4],
      featureOptions: [],
      isChecked: false,
      column: 54,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[5],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 32),
      checkboxValList: [],
      column: 32,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[6],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 53),
      checkboxValList: [],
      column: 53,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[7],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 33),
      checkboxValList: [],
      column: 33,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[8],
      featureOptions: [],
      isChecked: false,
      column: 45,
    ),
  ];

  List<ListOptions> performanceOptionsObj = [
    ListOptions(
      featureTitle: SmartphoneData.headers[9],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 16),
      checkboxValList: [],
      column: 16,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[10],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 17),
      checkboxValList: [],
      column: 17,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[11],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 39),
      checkboxValList: [],
      column: 39,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[12],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 20),
      checkboxValList: [],
      column: 20,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[13],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 12),
      checkboxValList: [],
      column: 12,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[14],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 19),
      checkboxValList: [],
      column: 19,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[15],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 44),
      checkboxValList: [],
      column: 44,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[16],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 34),
      checkboxValList: [],
      column: 34,
    ),
  ];
  List<ListOptions> displayOptionsObj = [
    ListOptions(
      featureTitle: SmartphoneData.headers[17],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 13),
      checkboxValList: [],
      column: 13,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[18],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 56),
      checkboxValList: [],
      column: 56,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[19],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 57),
      checkboxValList: [],
      column: 57,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[20],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 58),
      checkboxValList: [],
      column: 58,
    ),
  ];

  List<ListOptions> cameraOptionsObj = [
    ListOptions(
      featureTitle: SmartphoneData.headers[21],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 47),
      checkboxValList: [],
      column: 47,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[22],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 48),
      checkboxValList: [],
      column: 48,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[23],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 40),
      checkboxValList: [],
      column: 40,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[24],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 41),
      checkboxValList: [],
      column: 41,
    ),
  ];

  List<ListOptions> connectivityOptions = [
    ListOptions(
      featureTitle: SmartphoneData.headers[25],
      featureOptions: [],
      isChecked: false,
      column: 50,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[26],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 11),
      checkboxValList: [],
      column: 11,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[27],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 28),
      checkboxValList: [],
      column: 28,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[28],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 29),
      checkboxValList: [],
      column: 29,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[29],
      featureOptions: [],
      isChecked: false,
      column: 30,
    ),
    ListOptions(
      featureTitle: SmartphoneData.headers[30],
      featureOptions: SmartphoneData().getOptions(SmartphoneData.data, 31),
      checkboxValList: [],
      column: 31,
    ),
  ];

  Future userFuture;

  @override
  void initState() {
    super.initState();
    userFuture = _getOptions();
    buildList([
      buildOptionsObj,
      performanceOptionsObj,
      displayOptionsObj,
      cameraOptionsObj,
      connectivityOptions
    ]);
  }

  _getOptions() async {
    return await SmartphoneData().loadAsset();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Filter"),
          centerTitle: true,
          actions: <Widget>[
            TextButton(
              child: Text(
                "Apply Filters",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              onPressed: () {
                // List <dynamic> selectedQueries = [];
                List<int> tempVals = [];
                for (Map<int, List<String>> map in query) {
                  if (map.isNotEmpty) {
                    tempVals = map.keys.toList();
                  }
                  if (tempVals.length != 0) {
                    columnsSet.add(tempVals[0]);
                  }
                  map.removeWhere((key, value) => value.isEmpty);
                }

                for (var i = 0; i < query.length; i++) {
                  query.removeWhere((element) => element.isEmpty);
                }
                print(columnsSet);
                print(query);
                print("------------------------------------------");

                Navigator.pushNamed(context, "/filterResults");
              },
            ),
            Icon(Icons.check),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.build_outlined),
              label: 'Build',
              backgroundColor: Colors.lightBlue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.memory_outlined),
              label: 'Performance',
              backgroundColor: Colors.deepOrange,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.smartphone_outlined),
              label: 'Display',
              backgroundColor: Colors.orange,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_enhance_outlined),
              label: 'Camera',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contactless_outlined),
              label: 'Network',
              backgroundColor: Colors.teal,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
        body: FutureBuilder(
          future: userFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none ||
                snapshot.connectionState == ConnectionState.waiting ||
                snapshot.connectionState == ConnectionState.active) {
              clearHistory();
              return AlertDialog(
                title: Text("Loading"),
              );
            } else if (snapshot.hasError) {
              print("Here2");
              return AlertDialog(
                title: Text("Error Occured"),
                content: Text("Please Relaunch the app"),
              );
            } else {
              return Stack(children: [
                RawScrollbar(
                  thumbColor: const Color(0xff3baea2),
                  thickness: 4,
                  radius: Radius.circular(15),
                  child: listOptions.elementAt(_selectedIndex),
                ),
              ]);
            }
          },
        ),
      ),
    );
  }

  buildList(List<List<ListOptions>> optionsObj) {
    for (var i = 0; i < optionsObj.length; i++) {
      listOptions.add(
        ListView.builder(
          itemCount: optionsObj[i].length,
          itemBuilder: (BuildContext context, int index) {
            return optionsObj[i][index];
          },
        ),
      );
    }
  }
}
