import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'global.dart';

class ThemeConfig {
  static ThemeData createTheme({
    required Brightness brightness,
    required Color primary,
    required Color secondary,
    required Color primaryText,
    required Color secondaryText,
    required Color buttonColor,
    required Color disabled,
    required Color error,
  }) {
    final baseTextTheme = brightness == Brightness.dark
        ? Typography.blackMountainView
        : Typography.whiteMountainView;

    return ThemeData(
      brightness: brightness,
      buttonColor: buttonColor,
      canvasColor: buttonColor,
      cardColor: secondary,
      dividerColor: disabled,
      focusColor: primary,
      indicatorColor: primary,
      backgroundColor: secondary,
      primaryColor: primary,
      accentColor: primary,
      errorColor: error,
      toggleableActiveColor: primary,
      colorScheme: ColorScheme(
        primary: primary,
        primaryVariant: primary,
        secondary: secondary,
        secondaryVariant: secondary,
        surface: primary,
        background: secondary,
        error: error,
        onPrimary: secondary,
        onSecondary: primary,
        onSurface: Colors.black.withOpacity(0.12),
        onBackground: primary,
        onError: secondary,
        brightness: brightness,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: buttonColor,
        padding: EdgeInsets.symmetric(
          vertical: 15.h,
        ),
      ),
      cardTheme: CardTheme(
        elevation: Global.elevation,
        color: Global.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Global.cardRadius),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(Size(158.0.w, 46.h)),
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          elevation: MaterialStateProperty.all<double>(Global.elevation),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Global.buttonRadius.r),
              //side: BorderSide(color: Colors.red)
            ),
          ),
        ),
      ),
      iconTheme: IconThemeData(
        size: 12.r,
        color: Global.gray,
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Global.whiteWithOpacity,
        filled: true,
        labelStyle: TextStyle(color: Global.gray),
        focusColor: Global.gray,
        focusedBorder: InputBorder.none,
        contentPadding: EdgeInsets.zero,
        isDense: true,
        suffixStyle: const TextStyle(
          color: Global.gray,
          fontSize: 18.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.r),
          borderSide: BorderSide(color: Global.whiteWithOpacity),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.r),
          borderSide: BorderSide(color: Global.whiteWithOpacity),
        ),
        //hoverColor: Global.white,
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all<Color>(Global.white),
        fillColor: MaterialStateProperty.all<Color>(Global.blue),
      ),
      fontFamily: 'Roboto',
      textTheme: TextTheme(
        headline5: baseTextTheme.headline5!.copyWith(
          color: primary,
          fontSize: 14.0.sp,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.18,
        ),
        headline1: baseTextTheme.headline1!.copyWith(
          color: primary,
          fontSize: 20.0.sp,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.18,
        ),
        headline2: baseTextTheme.headline2!.copyWith(
          color: buttonColor,
          fontSize: 24.0.sp,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.18,
          shadows: <Shadow>[
            const Shadow(
              offset: Offset(2.0, 2.0),
              blurRadius: 4.0,
              color: Color.fromARGB(64, 0, 0, 0),
            ),
          ],
        ),
        headline6: baseTextTheme.headline6!.copyWith(
          color: primary,
          fontSize: 24.0.sp,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.25,
        ),
        headline3: baseTextTheme.headline5!.copyWith(
          color: secondaryText,
          fontSize: 18.0.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        bodyText1: baseTextTheme.bodyText1!.copyWith(
          color: primary,
          fontSize: 18.0.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.0,
        ),
        bodyText2: baseTextTheme.bodyText2!.copyWith(
          color: Global.black,
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        button: baseTextTheme.button!.copyWith(
          color: primary,
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.25,
        ),
        subtitle1: baseTextTheme.subtitle1!.copyWith(
          color: secondaryText,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
        ),
        subtitle2: baseTextTheme.subtitle2!.copyWith(
          color: secondaryText,
          fontSize: 48.sp,
          fontWeight: FontWeight.w800,
          letterSpacing: 1.25,
        ),
      ),
    );
  }

  static ThemeData get theme => createTheme(
        brightness: Brightness.light,
        primary: Global.blue,
        secondary: Global.blue,     //hatter
        primaryText: Global.blue,     //betu
        secondaryText: Global.black,
        buttonColor: Global.white,
        disabled: Colors.black,
        error: Colors.red,
      );
}
