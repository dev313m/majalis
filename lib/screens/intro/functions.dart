import 'package:flutter/material.dart';
import 'package:majalis/screens/root/index.dart';
import 'package:majalis/services/device_memory/user_type.dart';

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
}
