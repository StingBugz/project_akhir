import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Soal3 extends StatefulWidget {
  @override
  _Soal3State createState() => _Soal3State();
}

class _Soal3State extends State<Soal3> {
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
                          opacity: 0.4,
                          child: Container(
                            margin: EdgeInsets.only(right: 20, left: 20),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/image/pengobatan.jpg"),
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
                                "Cara mengobati gejala dari COVID-19",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "untuk gejala rigan",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "1. Tetap terhidrasi",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "2. Minum parasetamol",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "3. Istirahat yang cukup",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "4. Selalu pantau gejala",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "5. Mengisolasi diri",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "untuk gejala berat",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "1. Terapi anti-piretik untuk menurunkan suhu tubuh",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "2. Bantuan mesin ventilator untuk membantu pernapasan",
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
                        'https://health.detik.com/berita-detikhealth/d-4971524/5-cara-mengobati-gejala-virus-corona-ringan-di-rumah';
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
