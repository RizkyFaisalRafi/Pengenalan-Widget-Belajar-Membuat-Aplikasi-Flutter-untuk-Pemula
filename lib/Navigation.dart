import 'package:flutter/material.dart';

import 'Navigation2.dart';

/*
* Dalam pemrograman Android kita mengenal Intent
* lalu pada pemrograman website terdapat tag untuk berpindah dari satu page ke page lain.
* Pada Flutter kita akan menggunakan sebuah class bernama Navigator.
* Dengan Navigator ini kita akan berpindah dari satu screen ke screen lainnya.
* Berikut ini contohnya:
*/

void main(){
  runApp(myApp1());
}

class myApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      theme: ThemeData(),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  final String message = 'Hello from First Screen!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(message)));
          },
        ),
      ),
    );
  }
}