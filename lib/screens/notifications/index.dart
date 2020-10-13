import 'package:flutter/material.dart';
import 'package:majalis/global_utils/widgets/pages_background.dart';

class PageNotifications extends StatefulWidget {
  PageNotifications({Key key}) : super(key: key);

  @override
  _PageNotificationsState createState() => _PageNotificationsState();
}

class _PageNotificationsState extends State<PageNotifications> {
  @override
  Widget build(BuildContext context) {
    return GlobalWidgetBackground(
      child: Scaffold(
        body: SizedBox(),
      ),
    );
  }
}
