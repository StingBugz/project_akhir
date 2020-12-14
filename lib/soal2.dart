import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Soal2 extends StatefulWidget {
  @override
  _Soal2State createState() => _Soal2State();
}

class _Soal2State extends State<Soal2> {
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
                                  image: AssetImage("assets/image/mask.png"),
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
                                "Pencegahan Penularan Virus Corona",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "1. Mencuci tangan dengan benar",
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
                                  "2. Menggunakan masker",
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
                                  "3. Menjaga daya tahan tubuh",
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
                                  "4. Menerapkan physical distancing dan isolasi mandiri",
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
                                  "5. Membersihkan rumah dan melakukan disinfeksi secara rutin",
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
                        'https://www.alodokter.com/ketahui-cara-untuk-mencegah-penularan-virus-corona';
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
