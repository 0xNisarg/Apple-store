import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
          textTheme: TextTheme(titleMedium: TextStyle(color: Colors.black)),
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.poppins().fontFamily,
          cardColor: Colors.white,
          canvasColor: creamColor,
          floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: darkBluishColor),
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black), 
          )
        );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
          brightness: Brightness.dark,
          textTheme: TextTheme(titleMedium: TextStyle(color: Colors.white)),
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.poppins().fontFamily,
          cardColor: Colors.black,
          canvasColor: darkCreamColor,
          floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: lightBluishColor),
          appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
      )
  );


  //colors
  static Color creamColor = Color(0xfff5f5f5);        
  static Color darkCreamColor = Vx.gray900;      
  static Color darkBluishColor = Color(0xff403b58);        
  static Color lightBluishColor = Vx.indigo500;        
}