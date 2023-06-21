import 'package:demo/core/store.dart';
import 'package:demo/page/Login_page.dart';
import 'package:demo/page/cart_page.dart';
import 'package:demo/page/home_page.dart';
import 'package:demo/page/splash_screen.dart';
import 'package:demo/utils/routes.dart';
import 'package:demo/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: myapp()));
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context), 
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
        // initialRoute: MyRoutes.homeRoute,
        routes: {
          "/" : (context)=> SplashScreen(),
          MyRoutes.homeRoute : (context)=> LoginPage(),
          MyRoutes.homeRoute : (context)=> Homepage(),
          MyRoutes.loginRoute : (context)=> LoginPage(),
          MyRoutes.cartRoute: (context) => CartPage(),
        },
    );
  }
}