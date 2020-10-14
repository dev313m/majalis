import 'package:flutter/material.dart';
import 'package:majalis/global_utils/widgets/blur_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:majalis/global_utils/widgets/text.dart';
import 'package:timeago/timeago.dart' as timeago;

class UiNotificationOneItem extends StatelessWidget {
  const UiNotificationOneItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: GlobalWidgetBlurContainer(
        // height: 0.16.hp,
        backgroundColor: Colors.white,

        // height: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                IconButton(icon: Icon(Icons.star), onPressed: () {}),
                Expanded(
                    child: GlobalWidgetText(
                  'حسينية الرسول الاعظم',
                )),
                IconButton(icon: Icon(Icons.star), onPressed: () {}),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.w),
              child: GlobalWidgetText(
                'سيتم تأجيل المجلس لبعض الظروف الى الساعه التاسعة، وذلك بسبب اجراء بعض التعديلات في الحسينية ',
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(9.w),
                child: GlobalWidgetText(timeago.format(
                    DateTime.now().subtract(Duration(days: 4)),
                    locale: 'ar')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
