import 'package:benim_hocam/ekranlar/animasion_widget.dart';
import 'package:benim_hocam/ekranlar/dosya.dart';
import 'package:benim_hocam/ekranlar/fobiler.dart';
import 'package:benim_hocam/ekranlar/grafik.dart';
import 'package:benim_hocam/ekranlar/havadurumu.dart';
import 'package:benim_hocam/ekranlar/slayt.dart';
import 'package:benim_hocam/ekranlar/sqlislemler.dart';
import 'package:flutter/material.dart';

class YedekEkran extends StatefulWidget {
  @override
  _YedekEkranState createState() => _YedekEkranState();
}

class _YedekEkranState extends State<YedekEkran> {
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
            backgroundColor: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LineChartSample1(),
                  ));
            },
            child: Icon(Icons.airline_seat_recline_normal_sharp),
            heroTag: 3,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DosyaIslem(),
                  ));
            },
            child: Icon(Icons.account_balance_wallet),
            heroTag: 3,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HavaDurumu(),
                  ));
            },
            child: Icon(Icons.access_time),
            heroTag: 3,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentPage(),
                  ));
            },
            child: Icon(Icons.wifi_off_outlined),
            heroTag: 3,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.blue,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Fobiler(),
                  ));
            },
            child: Icon(Icons.wysiwyg_outlined),
            heroTag: 6,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IntroScreen(),
                  ));
            },
            child: Icon(Icons.contact_phone),
            heroTag: 3,
          ),
          FloatingActionButton(
            elevation: 20,
            backgroundColor: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimasionWidget(),
                  ));
            },
            child: Icon(Icons.ac_unit_sharp),
            heroTag: 3,
          ),
        ],
      ),
    );
  }
}
