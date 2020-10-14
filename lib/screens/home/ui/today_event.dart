import 'package:flutter/material.dart';
import 'package:majalis/global_utils/widgets/blur_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:majalis/global_utils/widgets/text.dart';

class UiHomeTodayEvent extends StatelessWidget {
  const UiHomeTodayEvent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidgetBlurContainer(
      height: 180,
      // height: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.circle_notifications),
                onPressed: () {},
                color: Colors.lime,
              ),
              Expanded(
                  child: GlobalWidgetText(
                'مناسبة هذا اليوم',
                textAlign: TextAlign.center,
                // textAlign: TextAlign.center,
                // style: TextStyle(color: Colors.white60, fontSize: 26.sp),
              )),
              IconButton(
                  icon: Icon(
                    Icons.circle_notifications,
                    color: Colors.lime,
                  ),
                  onPressed: () {}),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.w),
            child: GlobalWidgetText(
              'يصادف هذا اليوم ذكرى شهادة السيدة فاطمة ابنت اسد عليها السلام، ودفنت في المدينة المنورة ',
              style: GlobalWidgetText.textStyleSmallFontWhite,
              // textAlign: TextAlign.center,
              // style: TextStyle(color: Colors.white38),
            ),
          )
        ],
      ),
    );
  }
}
