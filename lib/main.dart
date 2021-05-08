import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velo2/widgets/global/nav.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigationBar(),
    );
  }
}