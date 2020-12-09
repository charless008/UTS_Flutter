import 'package:flutter/material.dart';

class AnggotaService {
  IconData image;
  Color color;
  String title;

  AnggotaService({this.image, this.title, this.color});
}

class Arisan {
  String title;
  String image;
  Arisan({this.title, this.image});
}

class Promo {
  String image;
  String title;
  String content;
  String button;

  Promo({this.image, this.title, this.content, this.button});
}
