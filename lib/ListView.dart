import 'package:flutter/material.dart';
import 'package:flutterapp/font.dart';

void main(){
  runApp(myApp1());
}

class myApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      theme: ThemeData(),
      home: Detail(),
    );
  }

}

class Detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }

}