import 'package:flutter/material.dart';

class DooListBar extends StatelessWidget {
  final color;
  final double height;

  const DooListBar(this.color, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
        color: color,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TxtTitle('Running in the morning', 16, FontWeight.w400, Colors.black),
          ],
        ),
        //child: Text('You can do anything'),
    );
  }
}


class DooListBoxes extends StatelessWidget {
  final color;
  final double height;

  const DooListBoxes(this.color, this.height);
//Colors.blueAccent, 'You can do anything', 'Every Tuesday', 'title'

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        padding: EdgeInsets.all(20.0),
        color: color,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TxtQuotes('You can doo anything'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TxtCycle('Everyday'),
                SizedBox(height: 4),
                TxtTitle('Running in the morning', 18, FontWeight.w600,Colors.black),
              ],
            ),
          ],
        ),
        //child: Text('You can do anything'),
      ),
    );
  }
}

class TxtQuotes extends StatelessWidget {
  final String quotes;

  const TxtQuotes(this.quotes);

  @override
  Widget build(BuildContext context) {
    return Text(
      quotes,
      style: TextStyle(
          fontSize: 34,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w800,
          color: Colors.white10),
    );
  }
}

class TxtCycle extends StatelessWidget {
  final String cycle;

  const TxtCycle(this.cycle);

  @override
  Widget build(BuildContext context) {
    return Text(
      cycle,
      style: TextStyle(
          fontSize: 14,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          color: Colors.black
      ),);
  }
}

class TxtTitle extends StatelessWidget {
  final String title;
  final double fonts;
  final FontWeight fontw;
  final Color color;

  const TxtTitle(this.title, this.fonts, this.fontw, this.color);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: fonts,
          fontFamily: 'Montserrat',
          fontWeight: fontw,
          color: color
      ),);
  }
}
