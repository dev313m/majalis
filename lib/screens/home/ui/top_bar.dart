import 'package:flutter/material.dart';
import 'package:majalis/global_utils/widgets/blur_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class UiHomeTopbar extends StatelessWidget {
  const UiHomeTopbar({
    Key key,
    @required this.appName,
  }) : super(key: key);

  final String appName;

  @override
  Widget build(BuildContext context) {
    return GlobalWidgetBlurContainer(
      height: 80.h,
      child: Padding(
        padding: EdgeInsets.all(8.0.w),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset('assets/images/icon.png'),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: Text(
                this.appName.tr(),
                style: TextStyle(color: Colors.white70, fontSize: 28.sp),
              ),
            ),
            IconButton(icon: Icon(Icons.message), color: Color(0x6C35052E), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
