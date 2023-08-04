/*import 'dart:math';

import 'package:flutter/material.dart';

//flex pay veriyor resimlere expanded içinde
void main() {
  runApp(const Yemek());
}

class Yemek extends StatelessWidget {
  const Yemek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Bugün Ne Yesem?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corboNo = 1;

  int yemekNo = 1;

  int tatliNo = 1;

  List<String> corbaAdi = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'TavukSuyu Çorbas',
    'Düğün Çorbası',
    'Yoğurt Çorbası'
  ];
  List<String> yemekAdi = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'İzgara Balık'
  ];
  List<String> tatliAdi = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  void yemekleriyenile() {
    setState(() {
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
      corboNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.white)),
                onPressed: yemekleriyenile,
                child: Image.asset('asserts/corba_$corboNo.jpg')),
          )),
          Text(
            corbaAdi[corboNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.white)),
                onPressed: yemekleriyenile,
                child: Image.asset('asserts/yemek_1.jpg')),
          )),
          Text(
            yemekAdi[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.white)),
                onPressed: yemekleriyenile,
                child: Image.asset('asserts/tatli_1.jpg')),
          )),
          Text(
            tatliAdi[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
*/

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void yemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('asserts/corba_$corbaNo.jpg')),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('asserts/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('asserts/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
