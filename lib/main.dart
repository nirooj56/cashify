import 'package:flutter/material.dart';
import 'package:cashmoney/Routes.dart';
import 'package:cashmoney/ui/home/HomePage.dart';

void main() {
  Routes.initRoutes();
  runApp(new MaterialApp(
    title: "Cash Money",
    home: new HomePage(),
  ));
}
