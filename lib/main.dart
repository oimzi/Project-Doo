import 'package:flutter/material.dart';
import 'package:flutter_doo_test/DooListBoxes.dart';
import 'WeeklyBoxes.dart';
import 'HomeTitleComponent.dart';
import 'DooListBoxes.dart';

void main() {
  runApp(
    MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Color(0xFAFAFA),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(64.0),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 1.0,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
                child: IconButton(
                    icon: Icon(Icons.menu, color: Colors.black,), onPressed: () {}),
              ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                HomeTitleComponent('weekly doo', IconsCalendar()),
                Container(
                  //margin: EdgeInsets.symmetric(vertical: 8.0),
                  margin: EdgeInsets.fromLTRB(16, 8, 16, 16),
                  //padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  height: 56.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      WeeklyBoxes(Colors.black87,'Mon.','12/12'),
                      SizedBox(width: 8,),
                      WeeklyBoxes(Colors.black12,'Tue.','12/13'),
                      SizedBox(width: 8,),
                      WeeklyBoxes(Colors.black12,'Wed.','12/14'),
                      SizedBox(width: 8,),
                      WeeklyBoxes(Colors.black12,'Thu.','12/15'),
                      SizedBox(width: 8,),
                      WeeklyBoxes(Colors.black12,'Fri.','12/16'),
                      SizedBox(width: 8,),
                      WeeklyBoxes(Colors.black12,'Sat.','12/17'),
                      SizedBox(width: 8,),
                      WeeklyBoxes(Colors.black12,'Sun.','12/18'),
                      SizedBox(width: 8,),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    DooListBar(Colors.white, 50),
                    DooListBar(Colors.white, 50),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                HomeTitleComponent('my doo list', IconsAdd()),
                Container(
                  margin: EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: DooListBoxes(Colors.blueAccent, 200),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


