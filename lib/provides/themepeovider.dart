import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
   var themeMode = ThemeMode.light;

   bool isDarkmood(){
     return themeMode ==ThemeMode.dark;
   }
void ToggleTheme (){
  if(themeMode ==  ThemeMode.light)
    themeMode =ThemeMode.dark;
  else
    themeMode =ThemeMode.light;

  notifyListeners();
}
}