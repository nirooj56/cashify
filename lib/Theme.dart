import 'package:flutter/material.dart';

class Colors {
  const Colors();

  static const Color appBarTitle = const Color(0xFFFFFFFF);
  static const Color appBarTitleq = const Color(0xFF000000);
  static const Color appBarIconColor = const Color(0xFF000000);
  static const Color appBarDetailBackground = const Color(0x00FFFFFF);
  static const Color appBarGradientStart = const Color(0xFF3383FC);
  static const Color appBarGradientEnd = const Color(0xFF00C6FF);
  static const Color planetCard = const Color(0xFF8685E5);
  static const Color planetPageBackground = const Color(0xFF736AB7);
  static const Color planetTitle = const Color(0xFFFFFFFF);
  static const Color planetTitle2 = const Color(0xFF00C6FF);
  static const Color planetLocation = const Color(0x66FFFFFF);
  static const Color planetBalance = const Color(0xFFFFFFFF);
  static const Color planetDescription = const Color(0x66FFFFFF);
  static const Color tableHeader = const Color(0xFF000000);

}

class Dimens {
  const Dimens();

  static const planetWidth = 100.0;
  static const planetHeight = 100.0;
}

class TextStyles {
  const TextStyles();

  static const TextStyle appBarTitle = const TextStyle(
      color: Colors.appBarTitle,
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w600,
      fontSize: 28.0);

  static const TextStyle planetTitle = const TextStyle(
      color: Colors.planetTitle,
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w600,
      fontSize: 24.0);

  static const TextStyle planetTitle2 = const TextStyle(
      color: Colors.planetTitle2,
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w600,
      fontSize: 24.0);

  static const TextStyle planetLocation = const TextStyle(
      color: Colors.planetLocation,
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w300,
      fontSize: 14.0);

  static const TextStyle totalBalance = const TextStyle(
      color: Colors.planetBalance,
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w400,
      fontSize: 17.0);

  static const TextStyle planetDescription = const TextStyle(
      color: Colors.planetDescription,
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w300,
      fontSize: 12.0);

  static const TextStyle tableHeader = const TextStyle(
      color: Colors.tableHeader,
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w900,
      fontSize: 14.0);

}
