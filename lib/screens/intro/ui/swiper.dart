import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:majalis/screens/intro/ui_intro_viewmodel.dart';
import 'package:majalis/screens/intro/utils/strings.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';

class UiIntroSwiper extends StatelessWidget {
  const UiIntroSwiper({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<UiHelperIntro>(builder: (context, uiIntroSwiper, __) {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.w),
            height: 400,
            child: Swiper(
              itemHeight: 400,
              itemCount: 4,
              onIndexChanged: (index) {
                // slideIndex = index;
                uiIntroSwiper.setSwiperIndex(index);
                // setState(() {});
              },
              autoplay: false,
              // control: SwiperControl(color: Colors.pink, ),
              controller: SwiperController(),
              pagination: SwiperPagination(),
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        child: Image.asset(
                          imagesSwiper[index],
                          fit: BoxFit.cover,
                        ),
                        height: 300,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: AnimatedSwitcher(
              duration: Duration(seconds: 1),
              child: TextWidget(slideIndex: Provider.of<UiHelperIntro>(context).swiperIndex),
            ),
          ),
        ],
      );
    });
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key key,
    @required this.slideIndex,
  }) : super(key: key);

  final slideIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      key: ValueKey('sli$slideIndex'),
      child: Container(
        height: 80.h,
        child: Text(
          UtilStringsIntro.slideStrings[slideIndex].tr(),
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white60, fontSize: 25.sp),
          // maxLines: 2,
          overflow: TextOverflow.fade,
          textWidthBasis: TextWidthBasis.parent,
          softWrap: true,
        ),
      ),
    );
  }
}

const List<String> imagesSwiper = [
  'assets/images/images1.jpg',
  'assets/images/images2.jpg',
  'assets/images/images3.png',
  'assets/images/images4.png'
];
