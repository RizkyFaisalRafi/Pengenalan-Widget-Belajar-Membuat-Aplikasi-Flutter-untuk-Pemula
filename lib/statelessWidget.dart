// StatelessWidget adalah widget yang nilai state-nya
// tidak dapat berubah (immutable) maka widget tersebut lebih bersifat statis
// dan memiliki interaksi yang terbatas.


// Import digunakan untuk memanggil fungsi fungsi dari berkas flutter
// kode dibawah mengimport kode kode yg terdapat dalam library material bawaan flutter
// Library tsb menyediakan widget termasuk dalam material design
import 'package:flutter/material.dart';

// main() merupakan fungsi utama / menjalankan pertama kali
void main() {
  runApp(MyApp());
}

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
          child: Heading( // Mengubah Widget Text
            text:"Hello world!",
          ),
        ),
      ),
    );
  }
}
// state-nya tidak dapat berubah (immutable), maka state yang ada di dalam
// kelas tersebut harus dibuat final.
// Nilainya hanya dapat diisi melalui constructor class-nya.

class Heading extends StatelessWidget {
  final String text; // state text bersifat final
  Heading({required this.text}); // lalu state text masuk ke constructor

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