import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/scaffold.dart';

void main(){
  runApp(myApp2());
}

// Widget Button
class myApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Stateless Widget',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: FirstScreen(),
      );
  }
}


class buttonscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container( // Container 1
              child: ElevatedButton( // Button
                onPressed: (){
                  // Aksi ketika button di klik
                }, child: Text("Tombol"),
              ),
            ),

            Container( // Container 2
              child: TextButton( // Button
                onPressed: (){
                  // Aksi ketika button di klik
                }, child: Text("Text Button"),
              ),
            ),

            Container( // Container 3
              child: OutlinedButton( // Button
                onPressed: (){
                  // Aksi ketika button di klik
                }, child: Text("Outlined Button"),
              ),
            ),

            Container( // Container 4
              child: IconButton( // Button
                icon: Icon(Icons.volume_up),
                tooltip: 'Increase volume by 10',
                onPressed: (){
                  // Aksi ketika button di klik
                },
              ),
            ),



          ],
        ),


      ),
    );

  }
}



// Dropdown Button (Error)
class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language; // Berikan null

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: DropdownButton<String>(
        items: <DropdownMenuItem<String>>[
          DropdownMenuItem<String>(
            value: 'Dart',
            child: Text('Dart'),
          ),
          DropdownMenuItem<String>(
            value: 'Kotlin',
            child: Text('Kotlin'),
          ),
          DropdownMenuItem<String>(
            value: 'Swift',
            child: Text('Swift'),
          ),
        ],
        value: language,
        hint: Text('Select Language'),
        onChanged: (String? value) {
          setState(() {
            language = value!;
          });
        },
      ),
    );
  }
}