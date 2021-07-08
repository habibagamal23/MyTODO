import 'package:flutter/material.dart';
import 'package:todo/main.dart';

class ThemeBottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
         Padding(
           padding: EdgeInsets.all(8),
            child: Row(

      children: [

        Expanded(
            child: Text("Light" , style: TextStyle(
              color: myTheme.primaryColor
            ),),
        ),
        Icon (Icons.check , color:  myTheme.primaryColor,)
      ],


            ),
          ),


          Padding(
            padding: EdgeInsets.all(8),
            child: Row(

              children: [

                Expanded(
                  child: Text("Dark" ),
                )
              ],


            ),
          ),

        ],
      ),
    );
  }
}
