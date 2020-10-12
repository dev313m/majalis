import 'package:flutter/material.dart';
import 'package:majalis/global_utils/widgets/blur_container.dart';
import 'package:majalis/global_utils/widgets/pages_background.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:majalis/global_utils/widgets/toggle_bar.dart';
import 'package:majalis/screens/home/ui/hussainiyah_item.dart';
import 'package:majalis/screens/home/ui/today_event.dart';
import 'package:majalis/screens/home/ui/top_bar.dart';
import 'package:majalis/screens/home/utils/strings.dart';
import 'package:easy_localization/easy_localization.dart';

class PageHome extends StatelessWidget with UtilStringsHome {
  PageHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidgetBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            SizedBox(
              height: 8.h,
            ),
            UiHomeTopbar(appName: appName),
            SizedBox(
              height: 20.h,
            ),
            UiHomeTodayEvent(),
            SizedBox(
              height: 20.h,
            ),
            UiHomeToggleBar(),
            SizedBox(
              height: 15.h,
            ),
            UiHomeHusiniyaItem(),
            UiHomeHusiniyaItem(),
            UiHomeHusiniyaItem(),
            UiHomeHusiniyaItem(),
            UiHomeHusiniyaItem(),
            UiHomeHusiniyaItem(),
            UiHomeHusiniyaItem(),
            UiHomeHusiniyaItem(),
            UiHomeHusiniyaItem(),
            UiHomeHusiniyaItem(),
            UiHomeHusiniyaItem(),
          ],
        ),
      ),
    );
  }
}
