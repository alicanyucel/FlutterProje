import 'package:flutter/material.dart';
class Fobiler extends StatefulWidget
{
  @override
  _FobilerState createState()=> _FobilerState();
}
class _FobilerState extends State<Fobiler>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('FOBİLER'),
      ),
      body:Center(
        child: Padding(
          padding:const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Text("1) KARANLIK KORKUSU"),
              Text("2) YÜKSEKLİK KORKUSU"),
              Text("3 GEÇMİŞE BAĞIMLILIK" )
            ],
          ),
        ),
      ),
    );
  }
}

