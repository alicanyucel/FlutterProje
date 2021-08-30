import 'package:flutter/material.dart';

class Yasts extends StatelessWidget {
  String gelenVeri;

  Yasts(this.gelenVeri);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.blueGrey.withOpacity(.4),
        title: Text("YAŞ PROBLEMLERİ"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black87,
                      Colors.black54,
                      Colors.black45,
                      Colors.black45,
                      Colors.black26,
                      Colors.black12,

                    ])),
            child: Text(gelenVeri,style: TextStyle(
                color: Colors.amber
            ),),
          ),
        ),
      ),
    );
  }
}
