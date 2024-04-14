// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import
import 'package:baladisap/constants.dart';
import 'package:baladisap/routes.dart';
import 'package:baladisap/screens/homepage_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'example/color.dart';
import 'example/login2.dart';
import 'example/splash.dart';

void main(List<String> args) {
  //desable landscape mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xffffffff),
        // primarySwatch: Palette.kToDark,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kPrimaryColor,
          secondary: kSecondaryColor,
        ),
        primaryColor: kPrimaryColor,
        iconTheme: IconThemeData(color: kSecondaryColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: kSecondaryColor,
          ),
        ),

        focusColor: kPrimaryColor,
        appBarTheme: AppBarTheme(
            color: kPrimaryColor,
            elevation: 0,
            foregroundColor: kSecondaryColor),
      ),
      // primarySwatch: Colors.yellow),
      routes: routes,
      home: Splash(),
    );
  }
}
