import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:majalis/screens/notifications/ui/notification.dart';
import 'package:auto_animated/auto_animated.dart';

class PageNotifications extends StatefulWidget {
  PageNotifications({Key key}) : super(key: key);

  @override
  _PageNotificationsState createState() => _PageNotificationsState();
}

class _PageNotificationsState extends State<PageNotifications> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: LiveList(
        // physics: NeverScrollableScrollPhysics(),
        // showItemInterval: Duration(seconds: 1),
        showItemDuration: Duration(milliseconds: 300),
        reAnimateOnVisibility: true,

        itemCount: 18,

        itemBuilder: animationItemBuilder(
          (index) => UiNotificationOneItem(),
          padding: EdgeInsets.symmetric(vertical: 8),
        ),

        // (_, index, animation) {
        //   return Padding(
        //     padding: EdgeInsets.only(top: 8.0.h),
        //     child: UiNotificationOneItem(),
        //   );
        // },
        shrinkWrap: true,
      ),
    );
  }
}

Widget Function(
  BuildContext context,
  int index,
  Animation<double> animation,
) animationItemBuilder(
  Widget Function(int index) child, {
  EdgeInsets padding = EdgeInsets.zero,
}) =>
    (
      BuildContext context,
      int index,
      Animation<double> animation,
    ) =>
        FadeTransition(
          opacity: Tween<double>(
            begin: 0,
            end: 1,
          ).animate(animation),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0, -0.1),
              end: Offset.zero,
            ).animate(animation),
            child: Padding(
              padding: padding,
              child: child(index),
            ),
          ),
        );
