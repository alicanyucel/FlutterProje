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

        child:new Marquee(text: " Bu uygulama  ALİ CAN YÜCEL tarafından  yapılmıştır.",
     

       scrollAxis:Axis.horizontal,),
      ),
    );
  }
}

