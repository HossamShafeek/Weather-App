import 'package:flutter/material.dart';

class AppColors {
  static const Color transparent = Colors.transparent;
  static final Color transparentWithOpacity10 = transparent.withOpacity(0.10);
  static const Color yellow = Color(0xffEEBE16);
  static const Color blue = Color(0xff3179E0);
  static const Color blueAccent = Color(0xff38BFF8);
  static const Color purple = Color(0xff231E64);
  static const Color purpleAccent = Color(0xff74549A);
  static const Color orange = Color(0xffF38E22);
  static const Color orangeAccent = Color(0xffEEBC17);
  static const Color blueGrey = Color(0xff425774);
  static const Color blueGreyAccent = Color(0xff5F758B);
  static const Color blueGreyAccent2 = Color(0xff667C90);
  static const Color red = Color(0xffd90429);
  static const Color redAccent = Color(0xffFA5570);
  static const Color purple100 = Color(0xff9583FF);
  static const Color grey = Color(0xff70787D);
  static const Color grey50 = Color(0xffEEF2F5);
  static const Color grey500 = Colors.grey;
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  static const List<Color> backgroundGradient = [
    purple100,
    blueAccent,
    yellow,
    yellow,
  ];
  static const List<Color> blueGradient = [
    blueAccent,
    blue,
  ];
  static const List<Color> blueGreyGradient = [
    blueGreyAccent2,
    blueGrey,
  ];
  static const List<Color> purpleGradient = [
    purpleAccent,
    purple,
  ];
  static const List<Color> orangeGradient = [
    orangeAccent,
    orange,
  ];
  static const List<Color> redGradient = [
    redAccent,
    red,
  ];

  //gradient Colors with opacity
  static final List<Color> blueGradientWithOpacity = [
    blueAccent.withOpacity(0.5),
    blue,
  ];
  static final List<Color> blueGreyGradientWithOpacity = [
    blueGreyAccent.withOpacity(0.5),
    blueGrey,
  ];
  static final List<Color> purpleGradientWithOpacity = [
    purpleAccent.withOpacity(0.5),
    purple,
  ];
  static final List<Color> orangeGradientWithOpacity = [
    orangeAccent.withOpacity(0.5),
    orange,
  ];
}
