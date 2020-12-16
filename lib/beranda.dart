import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_akhir/network.dart';
import 'dart:async';

import 'package:project_akhir/provinsi_list.dart';
import 'package:url_launcher/url_launcher.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  Future dataProvinsi, dataIndonesia;
  @override
  void initState() {
    super.initState();
    dataIndonesia = getDataIndonesia();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          flexibleSpace: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.all(20),
              color: Colors.lightBlueAccent,
              child: Text(
                "Covid Information",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
//slider news
            SafeArea(
              right: true,
              left: true,
              child: SizedBox(
                height: 230,
                child: Card(
                  elevation: 4,
                  color: Colors.grey[100],
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          "N E W S",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.red,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 180,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                        items: [
                          InkWell(
                            splashColor: Colors.blue,
                            onTap: () async {
                              const url =
                                  "https://health.detik.com/berita-detikhealth/d-4751226/cara-pakai-masker-yang-benar-bagian-biru-atau-putih-yang-di-luar";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw "Could't open this url";
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/image/flat/wearing mask.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.blue,
                            onTap: () async {
                              const url =
                                  "https://www.alodokter.com/pentingnya-menerapkan-social-distancing-demi-mencegah-covid-19";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw "Could't open this url";
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/image/flat/social distancing.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.blue,
                            onTap: () async {
                              const url =
                                  "https://www.dettol.co.id/kebersihan-diri/healthy-hands/how-to-wash-your-hands/";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw "Could't open this url";
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/image/flat/wash hand.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.blue,
                            onTap: () async {
                              const url =
                                  "https://health.detik.com/berita-detikhealth/d-4962993/lakukan-5-hal-ini-agar-terhindar-dari-virus-corona";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw "Could't open this url";
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/image/flat/protect.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
//negara
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
                child: Text(
                  "Update Kasus Corona Indonesia",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
//jumlah kasus covid indonesia
            Container(
              margin: EdgeInsets.only(right: 10, left: 10, top: 5),
              height: 120,
              child: Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          Center(
                            child: FutureBuilder(
                              future: dataIndonesia,
                              builder: (context, AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return Text(
                                    "${snapshot.data[0]["positif"]}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent),
                                  );
                                } else {
                                  return Center(
                                    child: Text(
                                      "Loading...",
                                      style:
                                          TextStyle(color: Colors.blueAccent),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Center(
                              child: Text(
                                "Positif",
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Center(
                            child: FutureBuilder(
                              future: dataIndonesia,
                              builder: (context, AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return Text(
                                    "${snapshot.data[0]["sembuh"]}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                  );
                                } else {
                                  return Center(
                                    child: Text(
                                      "Loading...",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Center(
                              child: Text(
                                "Sembuh",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle,
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                          Center(
                            child: FutureBuilder(
                              future: dataIndonesia,
                              builder: (context, AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return Text(
                                    "${snapshot.data[0]["meninggal"]}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.redAccent),
                                  );
                                } else {
                                  return Center(
                                    child: Text(
                                      "Loading...",
                                      style: TextStyle(color: Colors.redAccent),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Center(
                              child: Text(
                                "Meninggal",
                                style: TextStyle(color: Colors.redAccent),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
//update tiap provinsi
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "Update Tiap Provinsi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
//menampilkan map
            Container(
              height: MediaQuery.of(context).size.height / 4,
              margin: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Card(
                color: Colors.grey,
                elevation: 1,
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new ProvinsiList()));
                  },
                  child: Image(
                    image: AssetImage("assets/image/map indonesia.png"),
                    fit: BoxFit.contain,
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

Future getDataIndonesia() async {
  Network network = Network("https://api.kawalcorona.com/indonesia");
  return network.fetchdata();
}
