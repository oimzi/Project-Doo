import 'package:flutter/material.dart';
import 'package:flutter_doo_test/ui/widgets/txt_title.dart';

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
