import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/main.dart';

class todoItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slidable(child:Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: myTheme.whitecolor,
      ),
      margin: EdgeInsets.all(18),
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 80,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: myTheme.primaryColor,
            ),

          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("todo", style:  TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: myTheme.primaryColor
                    ),),
                  ),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(children: [
    Icon(Icons.calendar_today),
    Text("12/2/2019", textAlign: TextAlign.center,)
  ],),
)


                ],
              ),
            ),

          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal:16 ),
           margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: myTheme.primaryColor,

            ),
child:  Icon(Icons.check,color: myTheme.whitecolor,),
          ),
        ],
      ),
    ),
      actionPane: SlidableScrollActionPane(),
      actions: [
        IconSlideAction(
          color:Colors.transparent ,
    iconWidget: Container(
    width: double.infinity,
    height: double.infinity,
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.only(topLeft: Radius.circular(12)
    ,bottomLeft: Radius.circular(12))
    ),
    child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(Icons.delete,color: Colors.white,),
    Text('delete',style: TextStyle(color: Colors.white),)
    ],
    ),
    ),
    ) ,
        )
      ],

       );

  }
}
