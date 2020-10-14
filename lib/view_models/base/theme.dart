 ///This class represents the base data hold for the whole app, any thing changes here must affect all 
 /// the app.
 

import 'package:flutter/material.dart';

enum Language { en, ar, farsi }

enum ThemeMode { dart, bright, colorful }

class BaseViewModel extends ChangeNotifier {
  var language;
  var themeMode;

  BaseViewModel() {
    language = Language.ar;
    themeMode = ThemeMode.bright;
  }

  setTheme({@required var themeMode}) {
    this.themeMode = themeMode;
    notifyListeners();
  }

  setLanguage({@required var language}) {
    this.language = language;
    notifyListeners();
  }
}
