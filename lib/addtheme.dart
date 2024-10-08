import 'package:flutter/material.dart';

class AddTheme{
  static const Color lightPrimary=Color(0xFFB7935F);
  static const Color darkPrimary=Color(0xFF141A2E);
  static const Color White=Color(0XFFFFFFFF);
  static const Color Gold=Color(0XFFFACC1D);
static const Color Black =Color( 0XFF242424);

  static  ThemeData lightTheme=ThemeData(
appBarTheme:AppBarTheme(centerTitle:true,titleTextStyle: TextStyle(fontSize:30,fontWeight:FontWeight.bold,color: Black)
    ,backgroundColor: Colors.transparent),
    primaryColor: lightPrimary,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: lightPrimary,
      selectedItemColor: Black,
      unselectedItemColor: White,),
    scaffoldBackgroundColor: Colors.transparent,

  );
  static ThemeData darkThem=ThemeData();


}