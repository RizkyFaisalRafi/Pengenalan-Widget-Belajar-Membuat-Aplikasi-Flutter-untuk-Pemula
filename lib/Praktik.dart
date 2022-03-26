import 'package:flutter/material.dart';

void main(){
  runApp(myApp2());
}

class myApp1 extends StatelessWidget{
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
          body: Row( // Widget Row
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  Icon(Icons.thumb_up),
                  Text('Share'),
                ],
              ),

              Column(
                children: [
                  Icon(Icons.thumb_down),
                  Text('Like'),
                ],
              ),

              Column(
                children: [
                  Icon(Icons.share),
                  Text('Share'),
                ],
              ),

      ],
    ),

        ),
    );
  }
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
        body: Row( // Widget Row
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {  },),
            IconButton(icon: Icon(Icons.favorite), onPressed: () {  },),


          ],
        ),

      ),
    );
  }
}