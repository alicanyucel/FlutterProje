import 'package:flutter/material.dart';
class Motivasyon extends StatefulWidget
{
  @override
  _MotivasyonState createState()=> _MotivasyonState();
}
class _MotivasyonState extends State<Motivasyon>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('MOTİVASYON'),
      ),
      body:Center(
        child: Padding(
          padding:const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Text("Bu linkten motivasyon videosu izleyip kendinize gelebilirsiniz https://www.youtube.com/watch?v=kbN_6HTHBCg"),
              Image.asset(
                "lib/resimler/alican2.jpg",

                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

