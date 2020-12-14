import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Soal4 extends StatefulWidget {
  @override
  _Soal4State createState() => _Soal4State();
}

class _Soal4State extends State<Soal4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              //penjelasan
              Container(
                height: MediaQuery.of(context).size.height * 2 / 3,
                margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: SafeArea(
                  right: true,
                  left: true,
                  top: true,
                  bottom: true,
                  child: Card(
                    elevation: 2,
                    child: Stack(
                      children: <Widget>[
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/image/bersin.png"),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Penyebab penularan COVID-19",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "1. Penyebaran virus Corona melalui droplet",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "2. Penyebaran virus Corona melalui udara",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "3. Penyebaran virus Corona melalui permukaan yang terkontaminasi",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "4. Penyebaran virus Corona melalui fecal-oral atau limbah manusia",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "*Tekan icon untuk info lebih lanjut.",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //url web
              Container(
                margin: EdgeInsets.all(10),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () async {
                    const url =
                        'https://health.detik.com/berita-detikhealth/d-5122703/berbagai-cara-penyebaran-virus-corona-covid-19-menurut-who-apa-saja';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1 / 4,
                    width: MediaQuery.of(context).size.width / 2,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/ori.png"),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
