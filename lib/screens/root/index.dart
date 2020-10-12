import 'dart:async';
import 'dart:ui';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:majalis/global_utils/colors/colors.dart';
import 'package:majalis/global_utils/widgets/pages_background.dart';
import 'package:majalis/screens/home/index.dart';

class PageRoot extends StatefulWidget {
  PageRoot({Key key}) : super(key: key);

  @override
  _PageRootState createState() => _PageRootState();
}

class _PageRootState extends State<PageRoot> with SingleTickerProviderStateMixin {
  var _bottomNavIndex = 0; //default index of first screen

  AnimationController _animationController;
  Animation<double> animation;
  CurvedAnimation curve;
  PageController _pageController;

  final iconList = <IconData>[
    Icons.settings,
    Icons.person,
    Icons.play_arrow,
    Icons.notifications,
  ];

  @override
  void initState() {
    super.initState();
    final systemTheme = SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: HexColor('#373A36'),
      systemNavigationBarIconBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemTheme);

    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    Future.delayed(
      Duration(seconds: 1),
      () => _animationController.forward(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GlobalWidgetBackground(
        child: Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: PageView(
        children: [
          PageHome(),
          PageHome(),
          PageHome(),
          PageHome(),
          PageHome(),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      floatingActionButton: ScaleTransition(
        scale: animation,
        child: FloatingActionButton(
          elevation: 8,
          backgroundColor: HexColor('#FFA400'),
          child: Icon(
            Icons.home,
            color: HexColor('#373A36'),
          ),
          onPressed: () {
            _animationController.reset();
            _animationController.forward();
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          color: Colors.black.withOpacity(0.1),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: AnimatedBottomNavigationBar(
              icons: iconList,
              height: 50,
              backgroundColor: Colors.transparent,
              activeIndex: _bottomNavIndex,
              activeColor: HexColor('#7C0B7C'),
              splashColor: HexColor('#7C0B7C'),
              inactiveColor: Colors.white,
              notchAndCornersAnimation: animation,
              splashSpeedInMilliseconds: 300,
              notchSmoothness: NotchSmoothness.defaultEdge,
              gapLocation: GapLocation.center,
              leftCornerRadius: 32,
              rightCornerRadius: 32,
              onTap: (index) => setState(() => _bottomNavIndex = index),
            ),
          ),
        ),
      ),
    ));
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
