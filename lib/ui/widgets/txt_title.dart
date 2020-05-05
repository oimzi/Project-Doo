import 'package:flutter/material.dart';

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