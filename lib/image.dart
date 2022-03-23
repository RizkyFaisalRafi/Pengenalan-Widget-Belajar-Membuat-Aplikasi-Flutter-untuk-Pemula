import 'package:flutter/cupertino.dart';
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
      home: FirstScreen(text: '',),
    );
  }
}

class FirstScreen extends StatefulWidget {
  final String text;
  const FirstScreen({required this.text});
  @override
  _FirstScreenState1 createState() => _FirstScreenState1();
}

class _FirstScreenState1 extends State<FirstScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center( // menampilkan gambar yang bersumber dari internet
        child: Image.network('https://picsum.photos/200/300',
          width: 200,
          height: 200,
        ),

      ),
      );
  }
}

// Image.asset (Error)
// class FirstScreen2 extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.menu, color: Colors.white,),
//           onPressed: () {  },
//         ),
//         title: Text('First Screen'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search, color: Colors.white,),
//             onPressed: () {  },
//           )
//         ],
//       ),
//       body: Center(
//         child: Image.asset('images/androidparty.png',
//             width: 200,
//             height: 200
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {  },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
