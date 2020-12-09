import 'package:cobacoba/landing/landingpage_view.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 2);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new LandingPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Arisan Kita")),
      body: new Center(
        child: new Image.asset(
          "assets/pngegg.png",
          height: 100.0,
          width: 200,
        ),
      ),
    );
  }
}
