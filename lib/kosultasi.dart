import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Konsultasi extends StatefulWidget {
  @override
  _KonsultasiState createState() => _KonsultasiState();
}

class _KonsultasiState extends State<Konsultasi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Konsultasi"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              child: ListView(
                children: [
                  Card(
                    elevation: 4,
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () async {
                        await launch("sms:0266225180");
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "RSUD R.Syamsudin,SH",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
