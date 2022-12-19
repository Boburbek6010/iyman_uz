import 'package:flutter/material.dart';

class ThemeService {
  // intro view title textStyle
  static TextStyle titleTextStyle (context) => TextStyle(color: Colors.black, fontSize: MediaQuery.of(context).size.height / 21.1, fontWeight: FontWeight.bold);

  // intro view subtitle textStyle
  static TextStyle subtitleTextStyle (context) => TextStyle(color: Colors.black, fontSize: MediaQuery.of(context).size.height / 27.1, fontWeight: FontWeight.w400);

  // intro screen button style
  static TextStyle buttonStyleIntroScreen = const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);

  // niyat qilish view text style
 static TextStyle subtitleTextStyle2 = TextStyle(fontSize: 22, color: Colors.green.shade900);
 static TextStyle contentTextStyle = TextStyle(fontSize: 18, color: Colors.grey.shade800);

 // category view style
 static TextStyle categoryTextStyle = const TextStyle(fontSize: 24,color: Colors.white);
}
