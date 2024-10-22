import 'package:flutter/material.dart';

class MyTheme{
  static Color blackcolor = Color(0xff242424);
  static Color whitecolor = Color(0xffffffff);
  static Color yellowcolor = Color(0xffFACC1D);
  static Color primarylight = Color(0xffB7935F);
  static Color primaryDark = Color(0xff141A2E);
  static ThemeData LightMode = ThemeData(

    primaryColor: primarylight,
   scaffoldBackgroundColor: Colors.transparent,
   appBarTheme: AppBarTheme(
     backgroundColor: Colors.transparent,
     elevation:0,
     centerTitle: true,
     iconTheme: IconThemeData(
       color:  blackcolor
     )
   ),
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       selectedItemColor: blackcolor,
       showUnselectedLabels: true,
       backgroundColor: primarylight
     ),
     textTheme: TextTheme(
         titleLarge: TextStyle(
           fontSize: 30,
           fontWeight: FontWeight.bold,
           color: blackcolor
         ),
             titleMedium: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.w500,
               color: blackcolor
             ),
         titleSmall:  TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.w400,
             color: blackcolor
         )
 )
 );
  static ThemeData DarkMode = ThemeData(

      primaryColor: primaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation:0,
          centerTitle: true,
          iconTheme: IconThemeData(
              color:  whitecolor
          )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: yellowcolor,

          backgroundColor: primaryDark
      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            color: whitecolor
          ),
          titleMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: whitecolor
          ),
        titleSmall:  TextStyle(
           fontSize: 25,
          fontWeight: FontWeight.w400,
            color: whitecolor
      )
      )
  );
}