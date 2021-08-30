import 'package:benim_hocam/ders_bilgileri/carpanlaraayirma.dart';
import 'package:benim_hocam/ders_bilgileri/olasilik.dart';
import 'package:benim_hocam/dersler/fonts.dart';
import 'package:benim_hocam/ders_bilgileri/fonksiyonlar.dart';
import 'package:benim_hocam/ders_bilgileri/temel_kavramlar.dart';
import 'package:benim_hocam/ders_bilgileri/uslusayilar.dart';
import 'package:benim_hocam/dersler/carpanlarina_ayirma.dart';
import 'package:benim_hocam/dersler/olasiliktasarim.dart';
import 'package:benim_hocam/dersler/temel_kavramlar_widget.dart';
import 'package:benim_hocam/ders_bilgileri/obebveokek.dart';
import 'package:benim_hocam/dersler/obebts.dart';
import 'package:benim_hocam/dersler/orants.dart';
import 'package:benim_hocam/ders_bilgileri/oranveoranti.dart';
import 'package:benim_hocam/ders_bilgileri/hizproblemleri.dart';
import 'package:benim_hocam/dersler/hizts.dart';
import 'package:benim_hocam/dersler/kokluts.dart';
import 'package:benim_hocam/ders_bilgileri/koklusayilar.dart';
import 'package:benim_hocam/dersler/uslusayilarwidget.dart';
import 'package:benim_hocam/dersler/bolmewidget.dart';
import 'package:benim_hocam/dersler/permustasyontasarim.dart';
import 'package:benim_hocam/ders_bilgileri/permutasyon.dart';
import 'package:benim_hocam/dersler/rasyonel_sayilar_widget.dart';
import 'package:benim_hocam/ders_bilgileri/rasyonel_sayilar.dart';
import 'package:benim_hocam/ders_bilgileri/bolmebolunebilme.dart';
import 'package:benim_hocam/ders_bilgileri/asalcarpanlar.dart';
import 'package:benim_hocam/ders_bilgileri/binomacilimi.dart';
import 'package:benim_hocam/dersler/binomts.dart';
import 'package:benim_hocam/dersler/modts.dart';
import 'package:benim_hocam/ders_bilgileri/moduleraritmetik.dart';
import 'package:benim_hocam/dersler/asalcarpanlartasarim.dart';
import 'package:benim_hocam/ders_bilgileri/faizproblemleri.dart';
import 'package:benim_hocam/dersler/faiztasarim.dart';
import 'package:benim_hocam/ders_bilgileri/islem.dart';
import 'package:benim_hocam/dersler/islemtasarim.dart';
import 'package:benim_hocam/ders_bilgileri/kombinasyon.dart';
import 'package:benim_hocam/dersler/kombinasyontasarim.dart';
import 'package:benim_hocam/ders_bilgileri/karisimproblemleri.dart';
import 'package:benim_hocam/dersler/karisimts.dart';
import 'package:benim_hocam/dersler/yasts.dart';
import 'package:benim_hocam/ders_bilgileri/yasproblemleri.dart';
import 'package:flutter/material.dart';
class AnaEkran extends StatefulWidget {
  String ad;
  String soyad;

  AnaEkran(this.ad, this.soyad);

  @override
  _AnaEkranState createState() => _AnaEkranState();
}
class _AnaEkranState extends State<AnaEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hoşgeldin ${widget.ad} ${widget.soyad}"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(5),
        children: [
          GestureDetector(
            onDoubleTap:  () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TemelKavramlarWidget(TemelKavramlar().temel),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.white, Colors.green],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "TEMEL KAVRAMLAR",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 2",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 3",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),


          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Karisimts(Karisim().karisim),
                  ));
            },

            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "KARIŞIM PROBLEMLERİ",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 2",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 3",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onDoubleTapCancel: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Permutasyonts(Permutasyon().permustasyon),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "PERMÜTASYON",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 2",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onVerticalDragCancel:   () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Fonkts(Fonksiyonlar().fonks),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "FONKSİYONLAR",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 2",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 2",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onPanCancel:  () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Orants(Oran().oran),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "ORAN ORANTI",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 4",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 2",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),



          GestureDetector(
            onLongPress:   () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Koklutas(Koklu().koklu),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "KÖKLÜ SAYILAR",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 3",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 3",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onLongPressUp: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Yasts(Yas().yas),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "YAŞ PROBLEMLERİ",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 3",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 2",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onVerticalDragCancel:  () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Binomts(Binom().binom),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "BİNOM AÇILIMI",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Hizts(Hiz().hiz),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "HIZ PROBLEMLERİ",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Modts(Mod().mod),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "MODÜLER ARİTMATİK",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Obebts(Obeb().obeb),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "OBEB VE OKEK",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 3",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı:2",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    Kombinasyonts(Kombinasyon().kombin),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "KOMBİNASYON",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        uslusayilarwidget(Uslusayilar().uslu),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.white, Colors.green],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "ÜSLÜ SAYILAR",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 2",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Faizts(Faiz().faiz),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "FAİZ PROBLEMLERİ",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 2",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        RasyonelSayilarWidget(RasyonelSayilar().rasyonel),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "RASYONEL SAYILAR",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 3",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 2",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Islem(Islemts().islem)),
                  );
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "İŞLEM",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 0",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AsalCarpanlar(AsalCarpanlarAyirma().asal),

                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "ASAL ÇARPANLAR",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 4",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 3",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    Olasilikwidget(Olasilik().olasilik),
                  ));
            },

            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "OLASILIK",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        bolmewidget(Bolme().bolme),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "BÖLME BÖLÜNEBİLME",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 1",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CarpanlarinaAyirma(CarpanlarinaAyirmaIcinVeritabani().carpanlaraayirma),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.white, Colors.green],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text(
                      "ÇARPANLARA AYIRMA",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Ortalama Soru Sayısı: 3",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Son Yıl Soru Sayısı: 5",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}