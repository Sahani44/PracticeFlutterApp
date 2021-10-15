import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext
   context) => ThemeData(
        primarySwatch: Colors.blue,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        appBarTheme: AppBarTheme(
          color: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      );

   static ThemeData darkTheme(BuildContext
   context) => ThemeData(
        brightness: Brightness.dark,
      );   

}