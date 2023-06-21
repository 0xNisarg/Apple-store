import 'dart:async';

import 'package:demo/page/Login_page.dart';
import 'package:demo/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Color backgroundColor;
  late Color logoColor;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //get the system theme
    final Brightness currentBrightness = SchedulerBinding.instance!.window.platformBrightness;

    // Set the background and logo color based on the system theme
    if (currentBrightness == Brightness.dark){
      backgroundColor = MyTheme.darkCreamColor;
      logoColor = Colors.white;
    }else{
      backgroundColor = MyTheme.creamColor;
      logoColor = Colors.black;
    }
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: ColorFiltered(
            colorFilter: ColorFilter.mode(logoColor, BlendMode.srcIn),
            child: Image.asset(
          'assets/images/logo.png',
              width: 100,
        )),
      ),
    );
  }
}
