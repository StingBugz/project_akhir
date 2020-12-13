import 'package:flutter/material.dart';

class Soal2 extends StatefulWidget {
  @override
  _Soal2State createState() => _Soal2State();
}

class _Soal2State extends State<Soal2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text("soal 2"),
        ),
      ),
    );
  }
}
