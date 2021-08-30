import 'package:flutter/material.dart';
class Hobiler extends StatefulWidget
{
  @override
  _HobilerState createState()=> _HobilerState();
}
class _HobilerState extends State<Hobiler>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOBİLER'),
      ),
      body:Center(
        child: Padding(
          padding:const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Text("1) KİTAP OKUMA"),
              Text("2 FİLM İZLEME"),
              Text("3 MÜZİK DİNLEME"),
              Image.asset(
                "lib/resimler/alican4.jpg",
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

