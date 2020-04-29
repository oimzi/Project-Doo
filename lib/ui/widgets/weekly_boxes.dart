import 'package:flutter/material.dart';

class WeeklyBox extends StatelessWidget {
  final String week;
  final String date;
  final color;

  const WeeklyBox(this.color, this.week, this.date);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: 56.0,
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              week,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 12),
              textAlign: TextAlign.center,),
            SizedBox(height: 2,),
            Text(
              date,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 16),
              textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}