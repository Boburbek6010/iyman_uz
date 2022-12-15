import 'package:flutter/material.dart';
import 'package:iyman_uz/features/intro/presentation/screens/intro_screen.dart';

class SplashVM extends ChangeNotifier {
  bool isPressed = false;
  String isLanguageChosen = "";

  void ru(){
    isLanguageChosen = "ru";
    isPressed = true;
    notifyListeners();
  }

  void en(){
    isLanguageChosen = "en";
    isPressed = true;
    notifyListeners();
  }

  void uz(){
    isLanguageChosen = "uz";
    isPressed = true;
    notifyListeners();
  }

  void isLangChosen(BuildContext context){
    if(isPressed) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const IntroPage()));
    }
  }

}