import 'package:flutter/material.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.menu, color: Colors.black,), onPressed: () {}),
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height:56.0,
                margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
                padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
                //color: Color(0xFfffff),
                child: Text('weekly doo',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
