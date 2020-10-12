import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:majalis/screens/intro/functions.dart';
import 'package:majalis/screens/intro/ui/choose_language.dart';
import 'package:majalis/screens/intro/ui/swiper.dart';
import 'package:majalis/screens/intro/ui_intro_viewmodel.dart';
import 'package:majalis/screens/intro/utils/colors.dart';
import 'package:provider/provider.dart';

class PageIntro extends StatefulWidget {
  PageIntro({Key key}) : super(key: key);

  @override
  _PageIntroState createState() => _PageIntroState();
}

class _PageIntroState extends State<PageIntro> with FunctionIntro {
  int slideIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(750, 1334), allowFontScaling: false);

    return ChangeNotifierProvider<UiHelperIntro>(
        create: (_) => UiHelperIntro(),
        builder: (context, child) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    UtilColorIntro.backgroundTop,
                    UtilColorIntro.backgroundbuttom,
                  ],
                  begin: const FractionalOffset(1.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.mirror),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: ListView(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 50.h,
                    child: Center(
                        child: Text(
                      'appName'.tr().toString(),
                      style: TextStyle(fontSize: 34.sp, color: Colors.white),
                    )),
                  ),
                  UiIntroSwiper(),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  UiIntroChooseLang(),
                  SizedBox(
                    height: 20.h,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.done,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        this.navigateToRoot(context);
                      })
                ],
              ),
            ),
          );
        });
  }
}
