import 'package:flutter/material.dart';
import 'package:flutterapp/container.dart';
import 'package:flutterapp/font.dart';

void main(){
  runApp(myApp1());
}

class myApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      theme: ThemeData(),
      home: ScrollingScreen4(),
    );
  }
}

// Menampilkan item secara statis
class ScrollingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '1',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '2',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '3',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),

          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '4',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),

        ],
      ),

    );
  }

}


// Menampilkan item secara dinamis
// Selain memasukkan widget satu per satu ke dalam children dari ListView,
// Anda juga dapat menampilkan list secara dinamis. Ini sangat berguna ketika Anda memiliki banyak item dengan jumlah yang tidak menentu.
class ScrollingScreen2 extends StatefulWidget{
  @override
  State<ScrollingScreen2> createState() => _ScrollingScreenState();
}

class _ScrollingScreenState extends State<ScrollingScreen2> {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // Fungsi map ini berguna untuk memetakan atau mengubah setiap item di dalam list menjadi objek yang kita inginkan.
        // Fungsi map ini membutuhkan satu buah parameter berupa fungsi atau lambda.
        children: numberList.map((number) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '$number', // Ditampilkan sesuai item
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
          //  kita perlu mengembalikan fungsi map menjadi
          //  objek List lagi dengan fungsi .toList().
        }).toList(),
      ),
    );
  }
}



// Menggunakan Metode ListView.builder
// ListView.builder lebih cocok digunakan pada ListView dengan
// jumlah item yang cukup besar.

// Ini karena Flutter hanya akan merender tampilan item yang terlihat
// di layar dan tidak me-render seluruh item ListView di awal.

// ListView.builder memerlukan dua parameter yaitu
// itemBuilder dan itemCount.
// Parameter itemBuilder merupakan fungsi yang mengembalikan widget untuk ditampilkan.
// Sedangkan itemCount kita isi dengan jumlah seluruh item yang ingin ditampilkan.

class ScrollingScreen3 extends StatefulWidget{
  @override
  State<ScrollingScreen3> createState() => _ScrollingScreenState2();
}

class _ScrollingScreenState2 extends State<ScrollingScreen3> {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        itemCount: numberList.length,
      ),
    );
  }
}



// Menggunakan Metode ListView.separated
// ListView jenis ini akan menampilkan daftar item yang dipisahkan dengan separator.

// Penggunaan ListView.separated mirip dengan builder,
// yang membedakan adalah terdapat satu parameter tambahan wajib yaitu
// separatorBuilder yang mengembalikan Widget yang akan berperan sebagai separator.
class ScrollingScreen4 extends StatefulWidget{
  @override
  State<ScrollingScreen4> createState() => _ScrollingScreenState3();
}

class _ScrollingScreenState3 extends State<ScrollingScreen4> {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50,
              ),
            ),
          ),

          );
        },

        separatorBuilder: (BuildContext context, int index){
          return Divider();
        },
        itemCount: numberList.length,
      ),
    );
  }
}