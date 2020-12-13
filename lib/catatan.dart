import 'package:flutter/material.dart';

class Catatan extends StatefulWidget {
  @override
  _CatatanState createState() => _CatatanState();
}

class _CatatanState extends State<Catatan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text("Catatan")),
      ),
    );
  }
}
