import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:majalis/screens/intro/index.dart';
import 'package:majalis/screens/root/index.dart';
import 'package:majalis/services/device_memory/user_type.dart';
import 'package:majalis/view_models/base/theme.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool isRegistered = await memoryIsFirstTimeGet();

  //Set the fit size (fill in the screen size of the device in the design) If the design is based on the size of the iPhone6 ​​(iPhone6 ​​750*1334)
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'EN'), Locale('ar', 'AR')],
        saveLocale: true,
        path: 'assets/translations', // <-- change patch to your
        fallbackLocale: Locale('ar', 'AR'),
        child: MyApp(
          isRegistered: isRegistered,
        )),
  );
}

class MyApp extends StatelessWidget {
  final bool isRegistered;

  MyApp({this.isRegistered});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return isRegistered
        ? MultiProvider(
            providers: [
                Provider<BaseViewModel>(create: (_) => BaseViewModel()),
              ],
            child: MaterialApp(
                // title: 'Flutter Demo',
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                // home: MyHomePage()
                theme: ThemeData(
                  // This is the theme of your application.
                  //
                  // Try running your application with "flutter run". You'll see the
                  // application has a blue toolbar. Then, without quitting the app, try
                  // changing the primarySwatch below to Colors.green and then invoke
                  // "hot reload" (press "r" in the console where you ran "flutter run",
                  // or simply save your changes to "hot reload" in a Flutter IDE).
                  // Notice that the counter didn't reset back to zero; the application
                  // is not restarted.
                  primarySwatch: Colors.blue,
                  // This makes the visual density adapt to the platform that you run
                  // the app on. For desktop platforms, the controls will be smaller and
                  // closer together (more dense) than on mobile platforms.
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
                home: PageIntro()))
        : MultiProvider(
            providers: [
                Provider<BaseViewModel>(create: (_) => BaseViewModel()),
              ],
            child: MaterialApp(
                // title: 'Flutter Demo',
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                // home: MyHomePage()
                theme: ThemeData(
                  // This is the theme of your application.
                  //
                  // Try running your application with "flutter run". You'll see the
                  // application has a blue toolbar. Then, without quitting the app, try
                  // changing the primarySwatch below to Colors.green and then invoke
                  // "hot reload" (press "r" in the console where you ran "flutter run",
                  // or simply save your changes to "hot reload" in a Flutter IDE).
                  // Notice that the counter didn't reset back to zero; the application
                  // is not restarted.
                  primarySwatch: Colors.blue,
                  // This makes the visual density adapt to the platform that you run
                  // the app on. For desktop platforms, the controls will be smaller and
                  // closer together (more dense) than on mobile platforms.
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
                home: PageIntro()));
  }
}
