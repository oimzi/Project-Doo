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
          title: Center(
            child: Text('doo',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                  color: Colors.black),),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height:56.0,
                //margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                color: Color(0xFAFAFA),
                child: Text('Contaioner1',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Montserrat'
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
