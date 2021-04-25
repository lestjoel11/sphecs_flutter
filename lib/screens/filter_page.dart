import 'package:flutter/material.dart';
import 'package:sphecs/components/options_expansion_tile.dart';
import 'package:sphecs/services/smartphone_data.dart';

import '../components/hamburger_menu.dart';
//TODO: Maybe add live count of phones while entering filters
//TODO: add setState to update state

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

//TODO: MAP EACH OPTION TO A NUMBER VALUE
//TODO: MODIFY GET SCREEN TYPE TO A VARIABLE THAT WILL LIST A CERTAIN OPTION
//TODO: WORK WITH ONLY ONE DATASET
//TODO: MAKE A NEW CLASS FOR EACH OPTION, THEY HAVE STRING, LIST, INTERACTION CONTROL (CHECK BOX), AND THE INTERACTION VALUE
//TODO: STORE THIS OBJECT IN ARRAY OF OBJS

class _FilterPageState extends State<FilterPage> {
  List<String> headers = SmartphoneData().getHeaders();

  List<ListOptions> optionsObj = [
    ListOptions(
      featureTitle: "Brand",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "5G (Checkbox)",
      checkboxVal: false,
    ),
    ListOptions(
      featureTitle: "Announced Date",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Aspect Ratio",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Weight",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "SIM",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Screen Feature(CORRECT)",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 13),
    ),
    ListOptions(
      featureTitle: "Screen Size",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Screen Resolution",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "OS",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Chipset",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "CPU",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "SD Card slot",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Internal Storage",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Video Recording(Add selfie and rear)",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Loudspeaker type",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "3.5mm jack",
      checkboxVal: false,
    ),
    ListOptions(
      featureTitle: "WLAN network",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Bluetooth Version",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "GPS",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "NFC",
      checkboxVal: false,
    ),
    ListOptions(
      featureTitle: "Radio",
      checkboxVal: false,
    ),
    ListOptions(
      featureTitle: "USB Type",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Sensors",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Battery Type",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Colors",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Network Speed",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "GPU",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Main Cam Features",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Stylus/Pen",
      checkboxVal: false,
    ),
    ListOptions(
      featureTitle: "Selfie Cam Features",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Stand-by Length",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Display",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Camera (Triple, Dual, Quad <Expand for checkbox>)",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Loudspeaker rating(LUFS)",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Audio quality",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Battery life: As per gsmarena endurance rating",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Protection",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Charging speed",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Physical Keyboard(Checkbox)",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
    ListOptions(
      featureTitle: "Build",
      featureOptions: SmartphoneData().getScreenType(SmartphoneData.data, 0),
    ),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool checkBoxVal = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: Text("Filter"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.build_outlined),
              label: 'Build',
              backgroundColor: Colors.deepPurpleAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.memory_outlined),
              label: 'Performance',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_enhance_outlined),
              label: 'Camera',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.battery_full_outlined),
              label: 'Battery',
              backgroundColor: Colors.teal,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sim_card_outlined),
              label: 'Network',
              backgroundColor: Colors.teal,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
        drawer: HamburgerMenu(),
        body: RawScrollbar(
          thumbColor: Colors.deepPurpleAccent,
          thickness: 4,
          radius: Radius.circular(15),
          child: ListView.builder(
            itemCount: optionsObj.length,
            itemBuilder: (BuildContext context, int index) {
              return optionsObj[index];
            },
          ),
        ),
      ),
    );
  }
}
