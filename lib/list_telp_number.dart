import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TelNumbList extends StatefulWidget {
  @override
  _TelNumbListState createState() => _TelNumbListState();
}

class _TelNumbListState extends State<TelNumbList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("List Nomor Telepon RS")),
        body: Stack(
          children: <Widget>[
            Container(
              child: ListView(
                children: <Widget>[
                  Card(
                    elevation: 10,
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () async {
                        await launch("tel:0266225180");
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.topLeft,
                            child: Text("RSUD R.Syamsudin, SH"),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(left: 20, bottom: 20, top: 5),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "(0266) 225180",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ],
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
