import 'package:flutter/material.dart';
import 'package:todo/ui/home.dart';


void main() {
   runApp(MyApp());


}
class myTheme {
  static final primaryColor = Color.fromRGBO(93, 156, 243, 1.0);
  static final whitecolor = Colors.white;
  static final blackcolor = Colors.black;
  static final AccentColor = Color.fromRGBO(223, 236, 219, 1.0);
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     theme: ThemeData(
         primaryColor: myTheme.primaryColor,
       accentColor: myTheme.AccentColor,
     ),
     routes: {
      home.RouteName : (context)=> home()
     },
initialRoute: home.RouteName,
   );
  }

}