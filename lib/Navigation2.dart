import 'package:flutter/material.dart';

void main(){
  runApp(myAppsecond());
}


class myAppsecond extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen 2',
      theme: ThemeData(),
      home: SecondScreen(),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text('Kembali'),
          onPressed: () {},
        ),
      ),
    );
  }
}