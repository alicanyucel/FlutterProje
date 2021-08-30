import 'package:flutter/material.dart';

class AnimasionWidget extends StatefulWidget {
  @override
  _AnimasionWidgetState createState() => _AnimasionWidgetState();
}

class _AnimasionWidgetState extends State<AnimasionWidget> {
  var top = Alignment.topCenter;
  var bottom = Alignment.bottomCenter;
  bool secim = true;
  var list = [
    Colors.lightGreen,
    Colors.redAccent,
  ];
  double boyut = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AnimatedContainer(
          height: boyut,
          width: boyut,
          duration: Duration(seconds: 10),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Text(
              "SELÇUK ÜNİVERSİTESİ",
              style: TextStyle(fontSize: boyut),
            ),
          ),
        ),
      ),
    body: Center(

      child:  GestureDetector(
        onTap: () {
          setState(() {
            top = secim == true ? Alignment.bottomLeft : Alignment.topCenter;
            bottom =
            secim == true ? Alignment.topRight : Alignment.bottomCenter;
            list = secim == true
            ? [Colors.blueAccent, Colors.yellowAccent]
                : [
            Colors.lightGreen,
            Colors.redAccent,
            ];
            secim==true?
            boyut=500:boyut=15;
          });
          secim = !secim;
        },
        child: AnimatedContainer(
          height: double.infinity,
          width: double.infinity,
          duration: Duration(seconds: 1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                begin: top,
                end: bottom,
                colors: list,
                stops: [0.0, 1.0],
              ),
              color: Colors.lightGreen),
        ),
      ),


    ),
    );
  }
}
