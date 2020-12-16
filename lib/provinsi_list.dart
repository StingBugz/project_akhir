import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project_akhir/provinsi_info.dart';

class ProvinsiList extends StatefulWidget {
  @override
  _ProvinsiListState createState() => _ProvinsiListState();
}

class _ProvinsiListState extends State<ProvinsiList> {
  List allProvinsi = [];
  List filterDataProvinsi = [];
  bool isSearching = false;
  getProvinsi() async {
    var response =
        await Dio().get("https://api.kawalcorona.com/indonesia/provinsi");
    return response.data;
  }

  @override
  void initState() {
    getProvinsi().then((data) {
      setState(() {
        allProvinsi = filterDataProvinsi = data;
      });
    });
    super.initState();
  }

  void _filterProvinsi(value) {
    setState(() {
      filterDataProvinsi = allProvinsi
          .where((provinsi) => provinsi['attributes']['Provinsi']
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: !isSearching
                ? Text("Provinsi List")
                : TextField(
                    onChanged: (value) {
                      _filterProvinsi(value);
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: "Cari Provinsi",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
            actions: <Widget>[
              isSearching
                  ? IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: () {
                        setState(() {
                          this.isSearching = false;
                          filterDataProvinsi = allProvinsi;
                        });
                      })
                  : IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        setState(() {
                          this.isSearching = true;
                        });
                      })
            ],
          ),
          body: filterDataProvinsi.length > 0
              ? ListView.builder(
                  itemCount: filterDataProvinsi.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProvinsiDetail(filterDataProvinsi[index]),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            filterDataProvinsi[index]['attributes']['Provinsi'],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    );
                  })
              : Center(
                  child: CircularProgressIndicator(),
                )),
    );
  }
}
