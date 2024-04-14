// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import '../size_config.dart';
import 'login2.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => login2()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    return Scaffold(
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(sizeH * 15),
            child: Image(image: AssetImage("assets/splash.png"))),
      ),
    );
  }
}
