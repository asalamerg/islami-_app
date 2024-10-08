import 'package:flutter/material.dart';

class AddTheme{
  static const Color lightPrimary=Color(0xFFB7935F);
  static const Color darkPrimary=Color(0xFF141A2E);
  static const Color White=Color(0XFFFFFFFF);
  static const Color Gold=Color(0XFFFACC1D);
static const Color Black =Color( 0XFF242424);

  static  ThemeData lightTheme=ThemeData(
appBarTheme:const AppBarTheme(centerTitle:true,titleTextStyle: TextStyle(fontSize:30,fontWeight:FontWeight.bold,color: Black,)
    ,backgroundColor: Colors.transparent ,foregroundColor: Colors.deepPurple) ,
    primaryColor: lightPrimary,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: lightPrimary,
      selectedItemColor: Black,
      unselectedItemColor: White,),
    scaffoldBackgroundColor: Colors.transparent,
 textTheme: const TextTheme(
   displayLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color:Black),
displayMedium: TextStyle(color: Black,fontSize: 30,fontWeight: FontWeight.bold),
   displaySmall: TextStyle(color:Black, fontSize: 15,fontWeight: FontWeight.w200,)
 ),
  );


  static ThemeData darkThem=ThemeData(
    appBarTheme:const AppBarTheme(centerTitle:true,titleTextStyle: TextStyle(fontSize:30,fontWeight:FontWeight.bold,color: Gold,)
        ,backgroundColor: Colors.transparent ,foregroundColor: Colors.deepPurple) ,
    primaryColor: darkPrimary,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: darkPrimary,
      selectedItemColor: Gold,
      unselectedItemColor: Colors.white,),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Gold),
        displayMedium: TextStyle(color:Gold,fontSize: 30,fontWeight: FontWeight.bold),
        displaySmall: TextStyle(color: Gold, fontSize: 15,fontWeight: FontWeight.w200,)
    ),
  );


}