import 'package:flutter/material.dart';

class IletisimEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("iletişim"),
      ),
      body: Center(
        child: Column(
          children: [
            FlatButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.phone,
                size: 35,
                color: Colors.green,
              ),
              label: FittedBox(
                child: Text(
                  "0541 692 36 75 ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 30,),
            FlatButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.mail_outline,
                size: 35,
                color: Colors.blue,
              ),
              label: FittedBox(
                child: Text(
                  "yucelalican@hotmail.com",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 30,),
            FlatButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.location_city,
                size: 35,
                color: Colors.brown,
              ),
              label: Container(
                width: 250,
                height: 80,
                child: Text(
                  "ADRES: FATİH MAHALLESİ , GÜÇLÜ SOKAK NO:12/10 PURSAKLAR/ANKARA",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
