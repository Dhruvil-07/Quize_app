import 'package:flutter/material.dart';



//light theme data
ThemeData light_themeData(BuildContext context)
{
    return ThemeData(

        brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,

        //elevate button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[600],
            )
        ),


       // card theme
       cardTheme: CardTheme().copyWith(
         elevation: 10.0,
         shadowColor: Colors.black,
         color: Colors.deepPurple.shade200,
         shape: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(10.0)),
         )
       ),

    );
}






//dark theme data
ThemeData dark_themeData(BuildContext context)
{
    return ThemeData().copyWith(

        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,


        //eleveted button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
            )
        ),


      //card theme
      cardTheme: CardTheme().copyWith(
          elevation: 5.0,
          shadowColor: Colors.white,
          color: Colors.deepPurple.shade200,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          )
      ),



    );
}