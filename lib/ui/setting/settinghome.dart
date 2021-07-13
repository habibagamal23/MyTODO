import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/main.dart';
import 'package:provider/provider.dart';
import 'package:todo/provides/themepeovider.dart';

import 'ThemeBottomsheet.dart';

class settinghome extends StatefulWidget {
  @override
  _settinghomeState createState() => _settinghomeState();
}

class _settinghomeState extends State<settinghome> {


  @override
  Widget build(BuildContext context) {
    final themprovider = Provider.of<ThemeProvider>(context);
    return Container(

      padding: EdgeInsets.all(8),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Mode", style: TextStyle(
            fontWeight : FontWeight.bold,
            color : myTheme.blackcolor

          ),),
          InkWell(
            onTap  : (){

              showBottomsheet();
          }             ,
            child: Container(
margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(9),
              decoration:  BoxDecoration(
                color: myTheme.whitecolor,
                border: Border.all(width: 1 ,color: myTheme.primaryColor)
                  , borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                children: [
                  themprovider.isDarkmood()?
                  Expanded(child: Text('Dark')):
                  Expanded(child: Text('Light')),
                  Icon(Icons.arrow_drop_down_sharp)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showBottomsheet(){
    showModalBottomSheet(context: context, builder: (buildcontext){
    return ThemeBottomSheet();

    });

  }
}
