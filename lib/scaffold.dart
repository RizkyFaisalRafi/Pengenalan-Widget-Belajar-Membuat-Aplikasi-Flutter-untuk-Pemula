import 'package:flutter/material.dart';

void main(){
  runApp(myAPP());
}
// Scaffold merupakan sebuah widget yang digunakan untuk
// membuat tampilan dasar material design pada flutter.

class myAPP extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Scaffold',
      theme: ThemeData(
          primarySwatch: Colors.blue,
      ),
      home: FirstScreen(), // Panggil FirstScreen di sini
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text('First Screen'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}