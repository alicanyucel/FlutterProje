import 'package:flutter/material.dart';
class Ozgecmis extends StatefulWidget
{
  @override
  _OzgecmisState createState()=> _OzgecmisState();
}
class _OzgecmisState extends State<Ozgecmis>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('ÖZGEÇMİŞİM'),
      ),
      body:Center(
        child: Padding(
          padding:const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Text("ADIM ALİ CAN YÜCEL 9 EKİM 1992 DOĞUMLUYUM ANKARA/ÇUBUK LUYUM. İLKÖĞRETİMİMİ GÜLPINAR İ.Ö.OKULUNDA TAMAMLADIM. LİSE EĞİTİMİ PURSAKLAR LİSESİNDE TAMAMLADIM.ÖNLİSANS EĞİTİMİMİ SELÇUK ÜNİVERSİTESİ ILGIN MYO DA BİLGİSAYAR PROGRAMCILIĞI BÖLÜMÜNDE TAMAMLADIM.ARDINDAN GAZİ ÜNİVERSİTESİ İSTATİSTİK BÖLÜMÜNDE KISA BİR DÖNEM EĞİTİM ALDIM.ŞUAN DA DA SELÇUK ÜNİVERSİTESİ BİLGİSAYAR MÜHENDİSLİĞİ BÖLÜMÜNDE MEZUNİYETİNE 4 DERSİ KALMIŞ BİR ÖĞRENCİYİM "),
               Image.asset(
                "lib/resimler/alican1.jpg",

                fit: BoxFit.cover,
              ),

            ],
          ),
        ),
      ),
    );
  }
}


