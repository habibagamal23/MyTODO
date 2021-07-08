
import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
class AddBottomsheet extends StatefulWidget{
  @override
  _AddBottomsheetState createState() => _AddBottomsheetState();
}

class _AddBottomsheetState extends State<AddBottomsheet> {
 String title ='';
 String conect ='';
 DateTime date = null;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:   EdgeInsets.all(8),
      child: Column(


          crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Text("Add todo"),

        TextField(
          maxLines: 4,
          minLines: 2,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'title',
              contentPadding: EdgeInsets.all(8),

          ),
          onChanged: (newText){
            title=newText;
          },
        ),

          TextField(
            onChanged: (newText){
              conect=newText;
            },
            maxLines: 4,
            minLines: 2,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(),
                hintText: 'conect'

            ),
          ),
          
          InkWell(
            onTap: (){
choseDateForTodo();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: date == null ? Text("selectData", textAlign: TextAlign.start,)
          : Text(date.toString())
            ),
          )
          
        ]),
    );
  }
 choseDateForTodo() async{
var choose = await showDatePicker(context: context,
initialDate: DateTime.now(),
  firstDate: DateTime.now(),
  lastDate: DateTime.now().add(Duration(days : 30)),


);
date= choose;
 }
}
