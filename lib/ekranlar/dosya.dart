import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
class DosyaIslem extends StatefulWidget {
  @override
  _DosyaIslemState createState() => _DosyaIslemState();
}

class _DosyaIslemState extends State<DosyaIslem> {
  TextEditingController _textEditingController=TextEditingController(); //textbox

  //oluşturulacak dosya yolu
  Future<String> get klasorYolu async{
    Directory klasor=await getApplicationDocumentsDirectory();
    print("Klasör Yolu: "+klasor.path);
    return klasor.path;
  }

  //dosya oluşturma
  Future<File> get dosyaOlustur async{
    var olusanDosya =await klasorYolu;
    return File(olusanDosya+"/myDosya.txt");
  }

  //dosya okuma
  Future<String> get dosyaOku async{
    try{
      var myDosya =await dosyaOlustur;
      String dosyaIcerik= await myDosya.readAsStringSync();
      return dosyaIcerik;

    }catch(e){
      return "Hata $e";
    }
  }

  //dosya yazma
  Future<File> dosyayaYaz(String yazilacakDeger) async{
    var myDosya=await dosyaOlustur;
    return myDosya.writeAsString(yazilacakDeger);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller:_textEditingController ,
                decoration: InputDecoration(
                  hintText: "Buraya Yazılacak değer kayıt edilecek",
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(onPressed: _dosyaOku,color: Colors.green,child: Text("Dosya Oku"),),
                RaisedButton(onPressed: _dosyaYaz,color: Colors.green,child: Text("Dosya Yaz"),),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _dosyaOku() async{
    print(await dosyaOku);
  }

  void _dosyaYaz() {
    dosyayaYaz(_textEditingController.text.toString());
  }
}