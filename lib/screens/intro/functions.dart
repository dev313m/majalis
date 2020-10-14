import 'package:flutter/material.dart';
import 'package:majalis/screens/root/index.dart';
import 'package:majalis/services/device_memory/user_type.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:timeago/timeago.dart' as timeago;

class FunctionIntro {
  ///This function do two tasks, raises a bool for isRegisterd and navigate to root
  navigateToRoot(BuildContext context) async {
    await memoryIsFirstTimeSet(true);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => PageRoot(),
        ));
  }

  onLanguageChange(int select, BuildContext context) {
    if (select == 0) {
      context.locale = Locale('ar', 'AR');
      timeago.setLocaleMessages('ar', timeago.ArMessages());
    }
    ;
    if (select == 1) {
      context.locale = Locale('en', 'EN');
      timeago.setLocaleMessages('en', timeago.EnMessages());
    }
  }
}
