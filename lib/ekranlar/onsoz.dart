import 'package:flutter/material.dart';
class Onsoz extends StatefulWidget
{
  @override
  _OnsozState createState()=> _OnsozState();
}
class _OnsozState extends State<Onsoz>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Önsöz'),
      ),
      body:Center(
        child: Padding(
          padding:const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Text("BU UYGULAMAYI ÜNİVERSİTE SINAVLARINA HAZIRLANAN GENÇLERİMİZ İÇİN HAZIRLADIM. ÖNCELİKLE KONUYA KİTAPTAN ÇALIŞIN SONRASINDA VİDEO DERS İZLEYİN EN SON OLARAK SORU ÇÖZÜMLERİNİZİ YAPIN VE MUTLAKA ÇÖZEMEDİĞİNİZ SORULARIN ÇÖZÜMLERİNE BAKINIZ"),
              Image.asset(
                "lib/resimler/alican3.jpg",
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

