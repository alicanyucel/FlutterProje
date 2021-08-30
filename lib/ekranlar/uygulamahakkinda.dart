import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
class Hakkinda extends StatefulWidget
{
  @override
  _HakkindaState createState()=> _HakkindaState();
}
class _HakkindaState extends State<Hakkinda>
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Hakkında'),
      ),
      body: new Container(
        color: Colors.green,
        height: 100,
<<<<<<< HEAD
        child:new Marquee(text: " Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 163301074 numaralı ALİ CAN YÜCEL tarafından 9 TEMMUZ 2021 günü yapılmıştır.",
=======
        child:new Marquee(text: "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 163301074 numaralı ALİ CAN YÜCEL tarafından 30 Nisan 2021 günü yapılmıştır.",
>>>>>>> 707f5537e626f2e359d7185910adb9429784bb26
       scrollAxis:Axis.horizontal,),
      ),
    );
  }
}

