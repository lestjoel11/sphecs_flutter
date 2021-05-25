import 'package:flutter/material.dart';
import 'package:sphecs/services/smartphone_data.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void waitForLoadAsset() async {
    await SmartphoneData().loadAsset();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        Navigator.pushReplacementNamed(context, '/filter');
      });
    });
  }

  @override
  void initState() {
    super.initState();
    waitForLoadAsset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              strokeWidth: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Please wait, loading Filter Options"),
            )
          ],
        ),
      ),
    );
  }
}
