import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo/main.dart';
class listhome extends StatefulWidget {
  @override
  _listhomeState createState() => _listhomeState();
}

class _listhomeState extends State<listhome> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: myTheme.AccentColor,
      child: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.now().subtract(Duration(days: 30)),
            lastDay: DateTime.now().add(Duration(days: 30)),
            calendarStyle: CalendarStyle(
              selectedTextStyle:
              TextStyle(fontSize: 16, color: myTheme.whitecolor),
              selectedDecoration: BoxDecoration(
                color: myTheme.primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              defaultDecoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              defaultTextStyle:
              TextStyle(fontSize: 16, color: myTheme.blackcolor),
              isTodayHighlighted: false,
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                )),
            focusedDay: focusedDay,
            calendarFormat: CalendarFormat.week,
            headerVisible: false,
            selectedDayPredicate: (day) {
              return isSameDay(day, selectedDay);
            },
    onDaySelected: (newSelectedDate, newFocusedDay) {
      setState(() {
        selectedDay = newSelectedDate;
        focusedDay = newFocusedDay;
      });
    },
          ) ],
      ),
    );
  }
}