import 'package:flutter/material.dart';

class UiHelperRoot extends ChangeNotifier {
  int _indexPage = 0;
  PageController _pageController;

  PageController get pageController => _pageController;

  set pageController(PageController pageController) {
    _pageController = pageController;
    notifyListeners();
  }

  int get indexPage => _indexPage;

  set indexPage(int indexPage) {
    _indexPage = indexPage;
    notifyListeners();
  }
}
