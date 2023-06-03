import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int currentIndex = 0;
  String lang = "ru";

  void changeLang() {
    if (currentIndex == 2) {
      currentIndex = 0;
      notifyListeners();
    } else {
      currentIndex++;
      notifyListeners();
    }
  }

  List<String> langs = ['uz', 'en', 'ru'];
  List<String> title = ['Uzb', 'Eng', 'Rus'];
}
