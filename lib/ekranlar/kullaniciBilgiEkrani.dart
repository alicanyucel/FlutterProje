import 'package:benim_hocam/ekranlar/ana_ekran.dart';
import 'package:benim_hocam/ekranlar/hobiler.dart';
import 'package:benim_hocam/ekranlar/iletisim.dart';
import 'package:benim_hocam/ekranlar/uygulamahakkinda.dart';

import 'package:benim_hocam/ekranlar/onsoz.dart';
import 'package:benim_hocam/ekranlar/ozgecmisim.dart';
import 'package:benim_hocam/ekranlar/motivasyon.dart';
import 'package:flutter/material.dart';
import 'package:benim_hocam/ekranlar/yedekekran.dart';
class KullaniciBilgiEkrani extends StatefulWidget {
  @override
  _KullaniciBilgiEkraniState createState() => _KullaniciBilgiEkraniState();
}

class _KullaniciBilgiEkraniState extends State<KullaniciBilgiEkrani> {
  var adController = TextEditingController();
  var soyadController = TextEditingController();
  String ad = "";
  String soyad = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      resizeToAvoidBottomInset: false,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.green,
            onPressed: () {
              if (ad != "" && soyad != "") {
                Navigator.push(
                    context,
                   MaterialPageRoute(
                      builder: (context) => AnaEkran(ad, soyad),
                    ));
              } else {
                setState(() {
                  adController.text = "isim boş bırakılamaz";
                  soyadController.text = "Soyisim boş bırakılamaz";
                });
              }
            },
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/a/ab/Enter-key.jpg",
              fit: BoxFit.cover,
            ),
            heroTag: 1,
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.redAccent,
            onPressed: () {
              setState(() {
                adController.text = "";
                ad = "";
                soyadController.text = "";
                soyad = "";
              });
            },
            child: Image.asset(
              "lib/resimler/clear.jpg",
              fit: BoxFit.cover,
            ),
            heroTag: 2,
          ),
          SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IletisimEkrani(),
                  ));
            },
            child: Icon(Icons.contact_phone),
            heroTag: 3,
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.yellow,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Hakkinda(),
                  ));
            },
            child: Icon(Icons.wysiwyg_outlined),
            heroTag:4,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.yellow,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Motivasyon(),

                  ));
            },
            child: Icon(Icons.wysiwyg_outlined),
            heroTag:4,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.yellow,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>YedekEkran(),
                  ));
            },
            child: Icon(Icons.wysiwyg_outlined),
            heroTag:4,
        ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Ozgecmis(),
                  ));
            },
            child: Icon(Icons.perm_contact_cal_rounded),
            heroTag:4,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.orange,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Onsoz(),
                  ));
            },
            child: Icon(Icons.warning_sharp),
            heroTag:4,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.yellow,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Hobiler(),
                  ));
            },
            child: Icon(Icons.accessibility),
            heroTag:4,
          ),

        ],
      ),
      appBar: AppBar(
        title: Text("Lütfen Bilgilerinizi Giriniz"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 0,
              left: 15,
              right: 15,
            ),
            child: TextField(
              onChanged: (value) {
                ad = adController.text;
              },
              controller: adController,
              decoration: InputDecoration(
                hintText: "Lütfen isim giriniz",
                labelText: "Boş bırakılamaz",
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 0,
              left: 15,
              right: 15,
            ),
            child: TextField(
              onChanged: (value) {
                soyad = soyadController.text;
              },
              controller: soyadController,
              decoration: InputDecoration(
                hintText: "Lütfen soyisim giriniz",
                labelText: "Boş bırakılamaz",
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.people,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
