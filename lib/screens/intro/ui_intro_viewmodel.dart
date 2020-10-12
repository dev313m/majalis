import 'package:flutter/material.dart';

class UiHelperIntro extends ChangeNotifier {
  int swiperIndex = 0;

  setSwiperIndex(int swiperIndex) {
    this.swiperIndex = swiperIndex;
    notifyListeners();
  }
}
