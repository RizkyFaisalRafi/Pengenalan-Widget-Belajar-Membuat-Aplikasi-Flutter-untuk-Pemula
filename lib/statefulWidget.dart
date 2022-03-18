// StatefulWidget ialah widget yang state-nya
// dapat berubah-ubah nilainya, yang berarti StatefulWidget
// bersifat dinamis dan memiliki interaksi yang tak terbatas.

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

// class ContohStatefull extends StatefulWidget{
//   final String parameterWidget;
//   const ContohStatefull({required this.parameterWidget});
//
//   @override
//   contohstatefulstate createstate() => contohstatefulstate();
// }
//
// class contohstatefulstate extends State<ContohStatefull>{
//   String _datastate; // ini state dari widget ContohStatefull
//
//   @override
//   Widget build(BuildContext context){
//     // isi sebuah widget
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: BiggerText(text:"Hello Faisal"), // Ubah widget Heading ke PerubahanText
        ),
      ),
    );
  }
}


class Heading extends StatelessWidget {
  final String text;

  Heading({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text;
  const BiggerText({required this.text});
  @override
  _BiggerTextState createState() => _BiggerTextState();
}
class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0; // ukuran text diubah menjadi 32
            });
          },
        )
      ],
    );
  }
}