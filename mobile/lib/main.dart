import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/views/login.dart';

import 'global/global.dart';
import 'global/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: const [
        Locale('hu', 'HU'),
      ],
      fallbackLocale: const Locale('hu', 'HU'),
      path: 'assets/langs',
    ),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        theme: ThemeConfig.theme,
        //initialRoute: (isLoggedIn) ? 'report' : '/',
        home: AnimatedSplashScreen(
          backgroundColor: Colors.black,
          splash: Stack(children: [
            Opacity(
              opacity: Global.opacity,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Global.mediumBlue,
                        Global.white,
                      ]),
                ),
              ),
            ),
          ]),
          nextScreen: const Login(),
          splashIconSize: 812.h,
          //splashTransition: SplashTransition.rotationTransition,
          //pageTransitionType: PageTransitionType.size,
        ),
        routes: {
          'looin': (context) => const Text("Login"),
          //'report': (context) => StepperView(),
        },
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        //home: Login()
      ),
    );
  }
}

