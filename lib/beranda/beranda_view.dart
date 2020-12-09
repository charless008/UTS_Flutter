import 'package:cobacoba/beranda/beranda_appbar.dart';
import 'package:cobacoba/beranda/beranda_model.dart';

import 'package:cobacoba/constant.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  List<AnggotaService> _anggotaServiceList = [];

  @override
  void initState() {
    super.initState();

    _anggotaServiceList.add(new AnggotaService(
        image: Icons.person, color: AppPalette.menuCar, title: "CHARLES EKA"));
    _anggotaServiceList.add(new AnggotaService(
        image: Icons.person, color: AppPalette.menuTix, title: "FAMEILA"));
    _anggotaServiceList.add(new AnggotaService(
        image: Icons.person, color: AppPalette.menuShop, title: "CICI"));
    _anggotaServiceList.add(new AnggotaService(
        image: Icons.person, color: AppPalette.menuFood, title: "WIDARMAN"));
    _anggotaServiceList.add(new AnggotaService(
        image: Icons.person, color: AppPalette.menuBluebird, title: "guest"));
    _anggotaServiceList.add(new AnggotaService(
        image: Icons.person, color: AppPalette.menuBluebird, title: "guest"));
    _anggotaServiceList.add(new AnggotaService(
        image: Icons.person, color: AppPalette.menuBluebird, title: "guest"));

    _anggotaServiceList.add(new AnggotaService(
        image: Icons.apps, color: AppPalette.menuOther, title: "Lainnya"));
    _anggotaServiceList.add(new AnggotaService(
        image: Icons.person, color: AppPalette.menuBluebird, title: "guest"));
    _anggotaServiceList.add(new AnggotaService(
        image: Icons.person, color: AppPalette.menuBluebird, title: "guest"));
    _anggotaServiceList.add(new AnggotaService(
        image: Icons.person, color: AppPalette.menuBluebird, title: "guest"));
    _anggotaServiceList.add(new AnggotaService(
        image: Icons.person, color: AppPalette.menuBluebird, title: "guest"));
  }

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: Scaffold(
      appBar: new MyAppBar(),
      backgroundColor: AppPalette.grey,
      body: new Container(
        child: new ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              color: Colors.white,
              child: new Column(
                children: <Widget>[_buildMyMenu(), _buildAnggotaServicesMenu()],
              ),
            ),
            new Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 16.0),
              child: new Column(
                children: <Widget>[_buildArisanFeatured()],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget _buildMyMenu() {
    return new Container(
      decoration: new BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [const Color(0xffec1d27), const Color(0xff295cb5)],
          ),
          borderRadius: new BorderRadius.all(new Radius.circular(3.0))),
      child: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(12.0),
            decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff295cb5), const Color(0xffec1d27)],
                ),
                borderRadius: new BorderRadius.only(
                    topLeft: new Radius.circular(3.0),
                    topRight: new Radius.circular(3.0))),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "Arisan Kita",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: "NunitoBold"),
                ),
                new Container(
                  child: new Text(
                    "Kocokan Ke 1",
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontFamily: "NunitoBold"),
                  ),
                )
              ],
            ),
          ),
          new Container(
            padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "assets/icons/icon_transfer.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Pembayaran",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "assets/icons/icon_scan.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Barcode",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "assets/icons/icon_saldo.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Tambah Anggota",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "assets/icons/icon_menu.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Lainnya",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnggotaServicesMenu() {
    return new SizedBox(
        width: double.infinity,
        height: 220.0,
        child: new Container(
            margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: GridView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: 8,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, position) {
                  return _rowAnggotaService(_anggotaServiceList[position]);
                })));
  }

  Widget _rowAnggotaService(AnggotaService anggotaService) {
    return new Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return _buildMenuBottomSheet();
                  });
            },
            child: new Container(
              decoration: new BoxDecoration(
                  border: Border.all(color: AppPalette.grey200, width: 1.0),
                  borderRadius:
                      new BorderRadius.all(new Radius.circular(20.0))),
              padding: EdgeInsets.all(12.0),
              child: new Icon(
                anggotaService.image,
                color: anggotaService.color,
                size: 32.0,
              ),
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 6.0),
          ),
          new Text(anggotaService.title, style: new TextStyle(fontSize: 10.0))
        ],
      ),
    );
  }

  Widget _buildArisanFeatured() {
    return new Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            "ANGGOTA",
            style: new TextStyle(fontFamily: "NunitoBold"),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            "Calon Pemenang",
            style: new TextStyle(fontFamily: "NunitoBold"),
          ),
          new SizedBox(
            height: 172.0,
            child: FutureBuilder<List>(
                future: fetchArisan(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return new ListView.builder(
                      itemCount: snapshot.data.length,
                      padding: EdgeInsets.only(top: 12.0),
                      physics: new ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return _rowArisanFeatured(snapshot.data[index]);
                      },
                    );
                  }
                  return Center(
                    child: SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: const CircularProgressIndicator()),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget _rowArisanFeatured(Arisan arisan) {
    return new Container(
      margin: EdgeInsets.only(right: 16.0),
      child: new Column(
        children: <Widget>[
          new ClipRRect(
            borderRadius: new BorderRadius.circular(8.0),
            child: new Image.asset(
              arisan.image,
              width: 132.0,
              height: 132.0,
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            arisan.title,
          ),
        ],
      ),
    );
  }

  Widget _buildMenuBottomSheet() {
    return new StatefulBuilder(builder: (c, s) {
      return new SafeArea(
          child: new Container(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        width: double.infinity,
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(4.0), color: Colors.white),
        child: new Column(children: <Widget>[
          new Icon(
            Icons.drag_handle,
            color: AppPalette.grey,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(
                "Alohaaaa",
                style: new TextStyle(fontFamily: "NunitoBold", fontSize: 18.0),
              ),
              new OutlineButton(
                color: AppPalette.grey,
                onPressed: () {},
                child: new Text(
                  "EDIT FAVORITES",
                  style: new TextStyle(fontSize: 12.0, color: AppPalette.red),
                ),
              ),
            ],
          ),
          new Container(
            height: 300.0,
            child: new GridView.builder(
                physics: new NeverScrollableScrollPhysics(),
                itemCount: _anggotaServiceList.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, position) {
                  return _rowAnggotaService(_anggotaServiceList[position]);
                }),
          ),
        ]),
      ));
    });
  }

  Future<List<Arisan>> fetchArisan() async {
    List<Arisan> _arisanFeaturedList = [];
    _arisanFeaturedList
        .add(new Arisan(title: "Ronaldo", image: "assets/images/arisan11.jpg"));
    _arisanFeaturedList
        .add(new Arisan(title: "Beckham", image: "assets/images/arisan12.jpg"));
    _arisanFeaturedList
        .add(new Arisan(title: "Cantona", image: "assets/images/arisan13.jpg"));
    _arisanFeaturedList.add(
        new Arisan(title: "Ronaldinho", image: "assets/images/arisan14.jpg"));
    _arisanFeaturedList
        .add(new Arisan(title: "Ozil", image: "assets/images/arisan15.jpg"));

    return new Future.delayed(new Duration(seconds: 1), () {
      return _arisanFeaturedList;
    });
  }
}
