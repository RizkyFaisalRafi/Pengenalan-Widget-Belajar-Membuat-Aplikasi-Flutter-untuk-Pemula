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
  Widget build(BuildContext context) { // Icon Hamburger Menu
    return Scaffold(
      appBar: AppBar(
        leading: IconButton( // Leading untuk menu drawer dan hanya dapat menampung 1 widget
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),

        title: Text('First Screen'), // Icon Search
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

      body: Center( // Menambahkan Body dan Text
        child: Text('Hellow World!'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () { },
      ),
    );
  }
}

