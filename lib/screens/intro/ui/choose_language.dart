import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:majalis/global_utils/widgets/blur_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:majalis/global_utils/widgets/text.dart';
import 'package:majalis/screens/intro/functions.dart';

class UiIntroChooseLang extends StatelessWidget with FunctionIntro {
  const UiIntroChooseLang({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.language_rounded,
          size: 80.sp,
        ),
        SizedBox(
          height: 10.h,
        ),
        GlobalWidgetBlurContainer(
          alignment: Alignment.center,
          backgroundColor: Colors.purple,
          blurLevel: 8,
          borderRadius: 14,
          child: CupertinoPicker(
              itemExtent: 40,
              // diameterRatio: 2,
              offAxisFraction: 0,
              onSelectedItemChanged: (itemIndex) {
                this.onLanguageChange(itemIndex, context);
              },
              // offAxisFraction: 0,
              // squeeze: 4,
              // diameterRatio: 2,
              // squeeze: 22,
              // magnification: 6,
              useMagnifier: true,
              children: [
                GlobalWidgetText(
                  'اللغة العربية',
                ),
                GlobalWidgetText(
                  'English',
                ),
                GlobalWidgetText('Jewish')
                // Icon(Icons.ac_unit_rounded)
              ]),
          height: 250.h,
          width: 700.w,
          opcity: .18,
        ),
      ],
    );
  }
}
