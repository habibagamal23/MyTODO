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
  static final blackcolor = Colors.black;
  static final AccentColor = Color.fromRGBO(223, 236, 219, 1.0);
  static final lightThemeMode= ThemeData(
    primaryColor: myTheme.primaryColor,
    accentColor: myTheme.AccentColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: myTheme.primaryColor
      )
  );
  static final darkThemeMode= ThemeData(
    primaryColor: myTheme.primaryColor,
    accentColor: myTheme.AccentColor,
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
     builder:(buildcontext, widget ){
       final themprovider = Provider.of<ThemeProvider>(context);
     return MaterialApp(
themeMode:themprovider.themeMode  ,
       theme : myTheme.lightThemeMode,
       darkTheme: myTheme.darkThemeMode,

       routes: {
        home.RouteName : (context)=> home()
       },
initialRoute: home.RouteName,
     ); },
     );

  }

}