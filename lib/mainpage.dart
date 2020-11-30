import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Covid app"),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: <Widget>[
            //stack pertama
            Align(
              alignment: Alignment.topCenter,
              child: Text("disini adalaah background"),
            ),
            //stack kedua
            Align(
              alignment: Alignment.center,
              child: Text(
                  "disini untuk card view informasi / tabbar view pertama"),
            ),
            //stack ketiga
            Align(
              alignment: Alignment.bottomCenter,
              child: DefaultTabController(
                length: 3,
                child: Container(
                  height: 50,
                  color: Colors.blueAccent,
                  child: TabBar(
                      indicatorColor: Colors.purple,
                      labelPadding: EdgeInsets.all(10),
                      tabs: [
                        Tab(
                          child: Image(
                            width: 50,
                            height: 50,
                            image:
                                AssetImage("assets/image/virus-molecule.png"),
                          ),
                        ),
                        Tab(
                          child: Image(
                              width: 50,
                              height: 50,
                              image: AssetImage("assets/image/book.png")),
                        ),
                        Tab(
                          child: Image(
                            image: AssetImage("assets/image/first-aid-kit.png"),
                            width: 50,
                            height: 50,
                          ),
                        )
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
