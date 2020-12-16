import 'package:flutter/material.dart';

class RSTerdekat extends StatefulWidget {
  @override
  _RSTerdekatState createState() => _RSTerdekatState();
}

class _RSTerdekatState extends State<RSTerdekat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rumah Sakit Terdekat"),
        ),
        body: Center(
          child: Text("google map rumah sakit terdekat"),
        ),
      ),
    );
  }
}
