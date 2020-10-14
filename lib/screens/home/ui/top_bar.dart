import 'package:flutter/material.dart';
import 'package:majalis/global_utils/widgets/blur_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:majalis/global_utils/widgets/text.dart';

class UiHomeTopbar extends StatelessWidget {
  const UiHomeTopbar({
    Key key,
    @required this.appName,
  }) : super(key: key);

  final String appName;

  @override
  Widget build(BuildContext context) {
    return GlobalWidgetBlurContainer(
      blurLevel: 8,
      width: double.infinity,
      backgroundColor: Colors.purple,
      opcity: 0.3,
      // opcity: 0.8,
      // backgroundColor: Colors.white,

      height: 0.1.hp + MediaQuery.of(context).padding.top,
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0.w),
              child: ClipOval(
                child: Image.asset('assets/images/icon.png'),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: GlobalWidgetText(
                this.appName.tr(),
                // style: GlobalWidgetText.textStyleBigFontWhite,
                // style: TextStyle(color: Colors.white70, fontSize: 40.sp),
              ),
            ),
            IconButton(
                icon: Icon(Icons.settings),
                color: Color(0x6C35052E),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.message),
                color: Color(0x6C35052E),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
