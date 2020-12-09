import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "List View",
    home: new ListView(),
  ));
}

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Grid View",
            style: TextStyle(color: Colors.orange),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              color: Colors.yellowAccent,
              child: Center(
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 24.0, color: Colors.red),
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: Center(
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.brown,
              child: Center(
                child: Text(
                  "3",
                  style: TextStyle(fontSize: 24.0, color: Colors.yellow),
                ),
              ),
            ),
            Container(
              color: Colors.orange,
              child: Center(
                child: Text(
                  "4",
                  style: TextStyle(fontSize: 24.0, color: Colors.blue),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  "5",
                  style: TextStyle(fontSize: 24.0, color: Colors.blue),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  "6",
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
