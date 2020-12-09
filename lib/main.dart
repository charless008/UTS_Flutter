import 'package:cobacoba/constant.dart';
import 'package:cobacoba/launcher/launcher_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS',
      theme: new ThemeData(
        fontFamily: 'Nunito',
        primaryColor: AppPalette.red,
        accentColor: AppPalette.red,
      ),
      home: new LauncherPage(),
    );
  }
}
