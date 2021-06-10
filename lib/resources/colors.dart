import 'package:flutter/material.dart';

class ColorsData {
  Color blue = const Color.fromRGBO(22, 74, 197, 1);
  Color blue1 = const Color.fromRGBO(0, 45, 151, 1);
  Color blue2 = const Color.fromRGBO(36, 207, 255, 1);
  Color blue3 = const Color.fromRGBO(71, 120, 235, 1);
  Color white = const Color.fromRGBO(255, 255, 255, 1);
  Color black = const Color.fromRGBO(0, 0, 0, 1);
  Color grey1 = const Color.fromRGBO(166, 189, 242, 1);

  LinearGradient backGroundColor = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color.fromRGBO(0, 45, 151, 1),
      Color.fromRGBO(29, 89, 243, 1)
    ]
  );
}