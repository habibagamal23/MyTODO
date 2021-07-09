import 'package:flutter/material.dart';
import 'package:todo/main.dart';
import 'package:todo/provides/themepeovider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final themprovider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
         InkWell(
           onTap: (){
             if(!themprovider.isDarkmood())
               themprovider.ToggleTheme();


           },
           child: Padding(
             padding: EdgeInsets.all(8),
              child:getRow("Dark", themprovider.isDarkmood())
            ),
         ),


          InkWell(
            onTap: (){
              if(!themprovider.isDarkmood())
                themprovider.ToggleTheme();


            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: getRow("light", !themprovider.isDarkmood())
            ),
          ),

        ],
      ),
    );
  }
  Widget getRow(String r , bool isSelected){
if(isSelected){
  return  Row(

    children: [

      Expanded(
        child: Text(r , style: TextStyle(
            color: myTheme.primaryColor
        ),),
      ),
      Icon (Icons.check , color:  myTheme.primaryColor,)
    ],


  );}
else
  {
    Row(

      children: [

        Expanded(
          child: Text( r),
        )
      ],


    );
  }
  }
}
