import 'package:flutter/material.dart';

void main(){
  runApp(myApp1());
}

class myApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Stateless Widget',
      theme: ThemeData(
          fontFamily: 'oswald', // Default font menjadi 'oswald'
          primarySwatch: Colors.amber
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Font'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  'Assalamualaikum',
                  style: TextStyle(
                    fontFamily: 'oswald',
                    fontSize: 30,

                  ),

                ),
              )
            ]
        )
      ),
    );
  }

}