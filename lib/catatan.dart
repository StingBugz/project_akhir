import 'package:flutter/material.dart';
import 'package:project_akhir/soal1.dart';
import 'package:project_akhir/soal2.dart';
import 'package:project_akhir/soal3.dart';
import 'package:project_akhir/soal4.dart';

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
        body: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/flat/book.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 95,
              child: Card(
                elevation: 2,
                child: InkWell(
                  splashColor: Colors.blueAccent,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new Soal1()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Apa itu COVID-19 ?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 95,
              child: Card(
                elevation: 2,
                child: InkWell(
                  splashColor: Colors.blueAccent,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new Soal2()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bagaimana cara mencegah COVID-19 ?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 95,
              child: Card(
                elevation: 2,
                child: InkWell(
                  splashColor: Colors.blueAccent,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new Soal3()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bagaimana cara mengobati orang yang terjangkit COVID-19 ?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 95,
              child: Card(
                elevation: 2,
                child: InkWell(
                  splashColor: Colors.blueAccent,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new Soal4()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bagaimana kita mengantisipasi COVID-19 ?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
