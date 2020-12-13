import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
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
                          "NEWS",
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
                          Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/flat/wearing mask.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/flat/social distancing.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/flat/wash hand.jpg"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/flat/protect.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
//search bar
//negara
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 10, 0, 10),
                child: Text(
                  "Update Kasus Corona",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),

//jumlah kasus covid
            SizedBox(
              height: 110,
              child: Card(
                elevation: 2,
                margin: EdgeInsets.only(right: 10, left: 10, top: 5),
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
                          child: Text(
                            "1000",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Center(
                            child: Text(
                              "Terjangkit",
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
                          child: Text(
                            "1000",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
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
                          child: Text(
                            "1000",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent),
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
          ],
        ),
      ),
    );
  }
}
