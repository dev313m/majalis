import 'package:flutter/material.dart';
import 'package:majalis/global_utils/widgets/blur_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'حسينية الزهراء عليها السلام',
                  style: TextStyle(fontSize: 26.sp),
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'المنطقة: الاحساء- الفيصلية',
                  textAlign: TextAlign.right,
                ),
                Text(
                  'القارئ: الشيخ علي الشقران',
                  textAlign: TextAlign.right,
                ),
                Text(
                  'الوقت: ٨:٤٥ مساءا',
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(child: SizedBox()),
                  Container(
                    // height: 40.h,
                    // width: 200.w,
                    decoration: BoxDecoration(
                        color: Colors.white60, borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'ذهاب',
                          style: TextStyle(fontSize: 17.sp),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.location_on,
                              size: 30.sp,
                            ),
                            onPressed: null)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
