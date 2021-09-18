import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:horizontal_data_table/refresh/non_bounce_back_scroll_physics.dart';
import 'package:schedule_table/models/schedule.dart';
import 'package:schedule_table/providers/schedule_data.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class ScheduleTable extends StatefulWidget {
 const ScheduleTable({Key? key, required this.scheduleData}) : super(key: key);
    final Schedule scheduleData;

  @override
  _ScheduleTableState createState() => _ScheduleTableState();
}

class _ScheduleTableState extends State<ScheduleTable> {
 
 
  @override
  Widget build(BuildContext context) {
    
      ListView _horizontalList(int n) {
      return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
        n,
        (i) => Container(
          width: 50,
          color: Colors.white,
          alignment: Alignment.center,
          child: Text('$i'),
      ),
    ),
  );
}
   return  Scaffold(
     body: Container(
       child: ListView(
      children: [
    SizedBox(
      height: 50,
      child: _horizontalList(31),
    ),
    SizedBox(
      height: 50,
      
      child: _horizontalList(31),
    ),
    SizedBox(
      height: 50,
      child: _horizontalList(31),
    ),
    
  ],
),
     ),
   )
          
        

      
                    
                    
    



                  
                
          
          
          
        
  ;}}

// Widget buildDataTable() {
//     final List<String> _namesList = widget.scheduleData.data.keys.toList();
//     final _title = widget.scheduleData.title;
//     final _schedules = widget.scheduleData.data.values.toList();
//     final _startDate = widget.scheduleData.startDate;
//     final _endDate = widget.scheduleData.endDate;
//     final _listofDates = List.generate(
//         _endDate!.difference(_startDate!).inDays + 1,
//         (index) => _startDate.add(Duration(days: index)).day.toString());
//     // final _listOfAbbrs = List.generate(_schedules.length, (index) => _schedules[0][index].notes.toString());

//     // final _groupId
//     var columnHeaders = ['Name'];
//     columnHeaders.addAll(_listofDates);

//     final rows = List.generate(_schedules.length, (index) {
//       var rowItems = [_namesList[index]];
//       final itemStartDates =
//           _schedules[index].map((element) => element.startTime.day).toList();
//       final items =
//           _schedules[index].map((element) => element.notes.toString()).toList();
//       final List<String> _listOfNotes = [];
//       print(itemStartDates);
//       print(items);
//       _listofDates.forEach((date) {
//         int itemIndex = -1;
//         itemIndex = itemStartDates.indexWhere((d) => d == int.parse(date));
//         print('Index: ' + itemIndex.toString());
//         itemIndex == -1
//             ? _listOfNotes.add('N/A')
//             : _listOfNotes.add(items[itemIndex]);

//         // int.parse(date) == _schedules[index].map((e) => e.startTime.day);
//       });
//       print(_listOfNotes);
//       rowItems.addAll(_listOfNotes);
//       return rowItems;
//     });}