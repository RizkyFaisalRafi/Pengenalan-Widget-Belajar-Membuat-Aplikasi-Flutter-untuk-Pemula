import 'package:flutter/material.dart';
//  Container adalah widget yang digunakan untuk melakukan styling,
//  membuat sebuah shape (bentuk), dan layout pada widget child-nya.
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
          title: Text('Container'),
        ),
        body: Center(
          child: containerr(),
        ),
      ),

    );
  }
}

class containerr extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Container(
      child: Text('Hi', style: TextStyle(fontSize: 40)),
      // color: Colors.blue, // Color
      // width: 200,
      // height: 100,
      // padding: EdgeInsets.all(10), // Padding
      // margin: EdgeInsets.all(10), // Margin

      // Contoh menentukan warna background dari container dengan decoration
      decoration: BoxDecoration(
        color: Colors.red, // Color
        // shape: BoxShape.circle, // bentuk dari Container tersebut akan berbentuk lingkaran
        border: Border.all(color: Colors.green, width: 3), // Menambahkan Border
        borderRadius: BorderRadius.circular(10), // Agar tidak berujung lancip kasih radius

          boxShadow: [
          BoxShadow( // Shadow pada Container
            color: Colors.black,
            offset: Offset(3,8),
            blurRadius: 10,
          )
        ]
      ),


    );
  }
}