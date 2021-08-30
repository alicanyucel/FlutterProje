
import 'package:benim_hocam/ekranlar/dosya.dart';
import 'package:benim_hocam/ekranlar/kullaniciBilgiEkrani.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp()

  );

}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home:KullaniciBilgiEkrani()
    );
  }
}
