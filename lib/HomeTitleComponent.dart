import 'package:flutter/material.dart';

class HomeTitleComponent extends StatelessWidget {
  final String title;
  final Widget icons;

  const HomeTitleComponent(this.title, this.icons);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height:48.0,
          margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
          padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
          //color: Color(0xFfffff),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w800,
            ),),
        ),
        IconButton(
              icon: icons, onPressed: (){}),
      ],
    );
  }
}

class IconsAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.add, color: Colors.black,size: 24,);
  }
}


class IconsCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.calendar_today, color: Colors.black,size: 24,);
  }
}