import 'package:flutter/material.dart';
import 'package:todo/provides/themepeovider.dart';
import 'package:todo/ui/home.dart';
import 'package:provider/provider.dart';

void main() {
   runApp(MyApp());


}
class myTheme {
  static final primaryColor = Color.fromRGBO(93, 156, 243, 1.0);
  static final whitecolor = Colors.white;
  static final blackcolor = Color.fromARGB(255, 6, 14, 30);
  static var backGroundColor = Color.fromARGB(255, 223, 236, 219);
  static var darkBgColor = Color.fromARGB(255, 6, 14, 30);
  static final AccentColor = Color.fromRGBO(223, 236, 219, 1.0);
  static final lightThemeMode= ThemeData(
    primaryColor: myTheme.primaryColor,
    accentColor: myTheme.AccentColor,
      scaffoldBackgroundColor: myTheme.backGroundColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: myTheme.primaryColor
      )
  );
  static final darkThemeMode= ThemeData(
    primaryColor: myTheme.primaryColor,
    accentColor: myTheme.AccentColor,
      scaffoldBackgroundColor: myTheme.darkBgColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: myTheme.blackcolor
    )
  );

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return ChangeNotifierProvider(
     create: (context)=>ThemeProvider(),
     builder:(context, builder ){
       final themprovider = Provider.of<ThemeProvider>(context);
     return MaterialApp(
themeMode:themprovider.themeMode  ,
       theme : myTheme.lightThemeMode,
       darkTheme: myTheme.darkThemeMode,
title:  ' ROute TODO',
       routes: {
        home.RouteName : (context)=> home()
       },
initialRoute: home.RouteName,
     ); },
     );

  }

}