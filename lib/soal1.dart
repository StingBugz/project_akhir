import 'package:flutter/material.dart';

class Soal1 extends StatefulWidget {
  @override
  _Soal1State createState() => _Soal1State();
}

class _Soal1State extends State<Soal1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text("soal 1"),
        ),
      ),
    );
  }
}
