import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:majalis/global_utils/widgets/toggle_bar.dart';
import 'package:majalis/screens/home/ui/hussainiyah_item.dart';
import 'package:majalis/screens/home/ui/today_event.dart';
import 'package:majalis/screens/home/utils/strings.dart';

class PageHome extends StatefulWidget with UtilStringsHome {
  PageHome({Key key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome>
    with AutomaticKeepAliveClientMixin<PageHome>, UtilStringsHome {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: Colors.transparent,
      child: ListView(
        children: [
          SizedBox(
            height: 0.1.hp,
          ),
          // UiHomeTopbar(appName: this.appName),
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
    );
  }

  @override
  bool get wantKeepAlive => true;
}
