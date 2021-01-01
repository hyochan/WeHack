import 'package:flutter/material.dart';
import 'package:flutter\_localizations/flutter\_localizations.dart';

import './utils/localization.dart';
import 'utils/asset.dart' as Asset;
import './views/home.dart' show Home;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorBrightness: Brightness.dark,
        brightness: Brightness.dark,
        backgroundColor: Asset.Colors.darkBackground,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'NotoSans',
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 114,
            fontFamily: 'Timmana',
            height: 1.4,
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontFamily: 'Timmana',
            height: 1.4,
          ),
          caption: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'NotoSans',
            height: 1.3,
          ),
          subtitle1: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'NotoSans',
            height: 1.4,
          ),
          subtitle2: TextStyle(
            color: Colors.white,
            fontSize: 23,
            height: 1.3,
          ),
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'NotoSans',
            fontWeight: FontWeight.w400,
            height: 1.3,
          ),
        ),
        primaryColor: Asset.Colors.primary,
        buttonColor: Asset.Colors.primary,
        disabledColor: Asset.Colors.disabled,
      ),
      routes: {
        '/home': (BuildContext context) => Home(),
      },
      supportedLocales: [const Locale('en', 'US'), const Locale('ko', 'KR')],
      localizationsDelegates: [
        const LocalizationDelegate(supportedLocales: ['en', 'ko']),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      localeResolutionCallback:
          (Locale locale, Iterable<Locale> supportedLocales) {
        if (locale == null) {
          debugPrint("*language locale is null!!!");
          return supportedLocales.first;
        }
        for (Locale supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode ||
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      title: 'WeHack',
      home: Home(),
    );
  }
}
