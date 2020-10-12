import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

//Checking, setting  the type of the profile
Future memoryIsFirstTimeSet(bool b) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('firstTime', b); //True is for employee
  return;
}

Future<bool> memoryIsFirstTimeGet() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('firstTime'); //False is for employer
}
