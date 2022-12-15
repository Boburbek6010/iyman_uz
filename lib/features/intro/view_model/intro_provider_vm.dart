import 'package:flutter/material.dart';
import 'package:iyman_uz/features/home/presentation/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroProvider extends ChangeNotifier {
  PageController pageController = PageController(keepPage: true);
  int currentPage = 0;
  bool isActive = true;

  void onButtonTap(int index, context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    currentPage = index;
    currentPage != 4
        ? pageController.animateToPage(
            index + 1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOutBack,
          )
        : Navigator.pushReplacementNamed(context, HomePage.id);
    notifyListeners();
  }

  void changeColor(bool isTrue) {
    isActive = isTrue;
    notifyListeners();
  }

  void onPageChanged(int index) {
    currentPage = index;
    notifyListeners();
  }
}
