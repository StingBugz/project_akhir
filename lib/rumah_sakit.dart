import 'package:flutter/material.dart';

class RumahSakit extends StatefulWidget {
  @override
  _RumahSakitState createState() => _RumahSakitState();
}

class _RumahSakitState extends State<RumahSakit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text("Rumah Sakit")),
      ),
    );
  }
}
