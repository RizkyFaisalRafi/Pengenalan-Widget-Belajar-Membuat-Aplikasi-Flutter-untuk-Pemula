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
        // body: Row( // Widget Row
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: <Widget>[
        //     // Disini berisi widget
        //     Icon(Icons.share),
        //     Icon(Icons.thumb_up),
        //     Icon(Icons.thumb_down),
        //   ],
        // )

         body: Column( // Widget Column
          children: <Widget>[
            Text(
              'Sebuah Judul',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text('Lorem Ipsum Dolor Sit Amet'),
          ],
      ),

      ),

    );
  }

}