import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class ProvinsiDetail extends StatelessWidget {
  final Map provinsiData;
  ProvinsiDetail(this.provinsiData);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 8),
                alignment: Alignment.bottomCenter,
                child: Icon(
                  Icons.place,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                alignment: Alignment.bottomCenter,
                child: Text(
                  provinsiData['attributes']['Provinsi'],
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.topCenter,
              child: Text(
                "Jumlah Kasus",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              alignment: Alignment.topCenter,
              child: Text(
                (provinsiData['attributes']['Kasus_Posi'] +
                        provinsiData['attributes']['Kasus_Semb'] +
                        provinsiData['attributes']['Kasus_Meni'])
                    .toString(),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              alignment: Alignment.topCenter,
              child: Text(
                "orang",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 130),
              alignment: Alignment.topCenter,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                children: <Widget>[
                  FlipCard(
                    direction: FlipDirection.VERTICAL,
                    front: DataCovid(kasus: "Positif"),
                    back: ProvinsiFlip(
                      kasus:
                          provinsiData['attributes']['Kasus_Posi'].toString(),
                      warna: Colors.blueAccent,
                    ),
                  ),
                  FlipCard(
                    direction: FlipDirection.VERTICAL,
                    front: DataCovid(kasus: "Sembuh"),
                    back: ProvinsiFlip(
                      kasus:
                          provinsiData['attributes']['Kasus_Semb'].toString(),
                      warna: Colors.green,
                    ),
                  ),
                  FlipCard(
                    direction: FlipDirection.VERTICAL,
                    front: DataCovid(kasus: "Meninggal"),
                    back: ProvinsiFlip(
                      kasus:
                          provinsiData['attributes']['Kasus_Meni'].toString(),
                      warna: Colors.redAccent,
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Text("KawalCorona.com",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey,
                  )),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 100),
              child: RaisedButton(
                  padding:
                      EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 20),
                  hoverElevation: 1,
                  elevation: 5,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class ProvinsiFlip extends StatelessWidget {
  final String kasus;
  final Color warna;
  ProvinsiFlip({this.kasus, this.warna});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Card(
        elevation: 10,
        color: warna,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              kasus,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "orang",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}

class DataCovid extends StatelessWidget {
  final String kasus;
  const DataCovid({Key key, this.kasus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Card(
        elevation: 10,
        child: Center(
          child: Text(
            kasus,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
