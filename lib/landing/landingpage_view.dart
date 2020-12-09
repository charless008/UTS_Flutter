import 'package:cobacoba/beranda/beranda_view.dart';
import 'package:cobacoba/constant.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new BerandaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigation());
  }

  Widget _buildBottomNavigation() {
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: new Icon(Icons.home, color: AppPalette.red),
          icon: new Icon(
            Icons.home,
            color: Colors.grey,
          ),
          // ignore: deprecated_member_use
          title: new Text(
            'Beranda',
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(Icons.assignment, color: AppPalette.red),
          icon: new Icon(
            Icons.assignment,
            color: Colors.grey,
          ),

          // ignore: deprecated_member_use
          title: new Text('List Peserta'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(Icons.mail, color: AppPalette.red),
          icon: new Icon(
            Icons.mail,
            color: Colors.grey,
          ),
          // ignore: deprecated_member_use
          title: new Text('Chat'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.person,
            color: AppPalette.red,
          ),
          icon: new Icon(
            Icons.person,
            color: Colors.grey,
          ),
          // ignore: deprecated_member_use
          title: new Text('Akun'),
        ),
      ],
    );
  }
}
