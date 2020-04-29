import 'package:flutter/material.dart';
import 'package:flutter_doo_test/ui/views/home_view.dart';

void main() {
  runApp(
    MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}


