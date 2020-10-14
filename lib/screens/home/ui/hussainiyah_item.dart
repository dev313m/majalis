import 'package:flutter/material.dart';
import 'package:majalis/global_utils/widgets/blur_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:majalis/global_utils/widgets/text.dart';

class UiHomeHusiniyaItem extends StatelessWidget {
  const UiHomeHusiniyaItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidgetBlurContainer(
      // height: 130,
      blurLevel: 2,
      width: double.infinity,
      backgroundColor: Colors.black54,
      child: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GlobalWidgetText(
                    'حسينية الزهراء عليها السلام',
                    // style: TextStyle(fontSize: 26.sp),
                    // textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GlobalWidgetText(
                    'المنطقة: الاحساء- الفيصلية',
                    style: GlobalWidgetText.textStyleSmallFontWhite,
                    // textAlign: TextAlign.right,
                  ),
                  GlobalWidgetText(
                    'القارئ: الشيخ علي الشقران',
                    style: GlobalWidgetText.textStyleSmallFontWhite,

                    // textAlign: TextAlign.right,
                  ),
                  GlobalWidgetText(
                    'الوقت: ٨:٤٥ مساءا',
                    style: GlobalWidgetText.textStyleSmallFontWhite,

                    // textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Container(
              // height: 40.h,
              // width: 200.w,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(15)),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    // GlobalWidgetText(
                    //   'ذهاب',
                    //   style: GlobalWidgetText.textStyleSmallFontBlack,
                    // ),
                    IconButton(
                        icon: Icon(
                          Icons.favorite,
                          size: 30.sp,
                          color: Colors.purple,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.location_on,
                          size: 30.sp,
                          color: Colors.purple,
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
