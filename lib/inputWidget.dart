import 'package:flutter/material.dart';

void main(){
  runApp(myApp2());
}

class myApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Stateless Widget',
      theme: ThemeData(
          primarySwatch: Colors.amber
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text('HIII'),
        ),
        body: Center(
          child: Text('Assalamualikum'),
        ),
      ),

    );
  }
}