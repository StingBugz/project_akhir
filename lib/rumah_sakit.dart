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
        body: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/image/flat/hospital.jpg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              color: Colors.transparent,
              child: Text(
                "PUSAT BANTUAN",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.only(right: 20, left: 20, bottom: 10),
              child: Card(
                child: InkWell(
                  splashColor: Colors.blueAccent,
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20, left: 30),
                        child: Icon(
                          Icons.call,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      Text(
                        "Call Line",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.only(right: 20, left: 20, bottom: 10),
              child: Card(
                child: InkWell(
                  splashColor: Colors.blueAccent,
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20, left: 30),
                        child: Icon(
                          Icons.people,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      Text(
                        "Konsultasi Dokter",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.only(right: 20, left: 20, bottom: 10),
              child: Card(
                child: InkWell(
                  splashColor: Colors.blueAccent,
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20, left: 30),
                        child: Icon(
                          Icons.local_hospital,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      Text(
                        "Rumah Sakit Terdekat",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
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
