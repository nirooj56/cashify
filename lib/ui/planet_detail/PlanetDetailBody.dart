import 'package:flutter/material.dart';
//import 'package:cashmoney/Theme.dart' as Theme;
import 'package:cashmoney/ui/home/GradientAppBar.dart';
import 'package:cashmoney/model/Planet.dart';

class PlanetDetailBody extends StatelessWidget {
  final Planet planet;

  PlanetDetailBody(this.planet);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new GradientAppBar(planet.name),
      ],
    );
  }
}
