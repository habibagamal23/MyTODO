import 'package:flutter/material.dart';
import 'package:todo/ui/home.dart';
void main() {
  runApp(MyApp());

}
class myTheme {
  static final primaryColor = Color.fromRGBO(93, 156, 243, 1.0);
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     theme: ThemeData(
         primaryColor: myTheme.primaryColor,
     ),
     routes: {
      home.RouteName : (context)=> home()
     },
initialRoute: home.RouteName,
   );
  }

}