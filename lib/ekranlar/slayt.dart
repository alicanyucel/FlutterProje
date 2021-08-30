import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';
class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

// ------------------ Custom config ------------------
class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title:
        "SELÇUK ÜNİVERSİTESİ",
        maxLineTitle: 22,
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
        " Konya'da üniversite açma konusu ilk olarak 1955 yılında TBMM'de hazırlanan bir kanun tasarısı ile gündeme gelirken, milletvekillerinin yarıdan fazlası tarafından imzalanan tasarı, talihsiz bir şekilde Milli Eğitim Komisyonu'ndan geçememiştir. 1962'de MEB'e bağlı olarak açılan Selçuk Eğitim Enstitüsü ve Yüksek İslâm Enstitüsü ile üniversiteye sahip olma yolunda ilk ciddi adım atılmıştır. Bu ilk adımın güçlendirilerek geliştirilmesi için 1968’de Konya'da “Üniversiteyi Kurma ve Yaşatma Derneği” kurulmuş ve gösterilen üstün gayretler sonucu bugünkü Mühendislik-Mimarlık Fakültesi'nin nüvesini teşkil eden Mühendislik-Mimarlık Yüksekokulu kurulmuştur. Binası, dersliği, personeli ve bütçesi olmadığı halde Üniversiteyi Kurma ve Yaşatma Derneği'nin gayretleri ile 1970-1971 eğitim-öğretim yılında Çocuk Esirgeme Kurumu’na ait bir binada (Gazi Lisesi yanı) hizmet vermeye başlayan bu yüksekokul, 5 Temmuz 1971 tarih ve 1418 sayılı kanunun 9’uncu maddesine istinaden Konya Devlet Mimarlık Mühendislik Akademisi unvanını almıştır.,",
        styleDescription: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        marginDescription:
        EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
        centerWidget: Text("BİR DÜNYA ÜNİVERSİTESİ SELÇUK ÜNİVERSİTESİ",
            style: TextStyle(color: Colors.white)),
        backgroundImage: "lib/images/selcuk.jpg",
        directionColorBegin: Alignment.center,
        directionColorEnd: Alignment.bottomRight,
        onCenterItemPress: () {},
      ),
    );
    slides.add(
      new Slide(
        title: "GAZİ ÜNİVERSİTESİ",
        styleTitle: TextStyle(
            color: Color(0xff7FFFD4),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
        "Gazi Üniversitesi, Ankara'da bulunan bir devlet üniversitesidir. 1926 yılında Ankara'da kuruldu. Ayrıca Gazi Üniversitesi, cumhuriyetin ilk üniversitesi olma unvanını da elinde bulundurur. Tıp, Diş Hekimliği, Eğitim, Fen, Mühendislik ve Teknoloji Fakültesi önemli fakülteleridir.",
        styleDescription: TextStyle(
            color: Color(0xff7FFFD4),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        backgroundImage: "lib/images/gazi.jpg",
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
    slides.add(
      new Slide(
        title: "ODTÜ",
        styleTitle: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        backgroundImage: "lib/images/odtu.jpg",
        description:
        "Orta Doğu Teknik Üniversitesi, 15 Kasım 1956 tarihinde, zamanın Türkiye Başbakanı Adnan Menderes, Karayolları Genel Müdürü Vecdi Diker ve bir grup akademisyen tarafından Ankara'da kurulmuş bir devlet üniversitesidir. ",
        styleDescription: TextStyle(
            color: Colors.white70,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        maxLineTextDescription: 33,
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => HomeScreen()),
    // );
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffF3B4BA),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffF3B4BA),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffF3B4BA),
    );
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
      backgroundColor: MaterialStateProperty.all<Color>(Color(0x33F3B4BA)),
      overlayColor: MaterialStateProperty.all<Color>(Color(0x33FFA8B0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      skipButtonStyle: myButtonStyle(),

      // Next button
      renderNextBtn: this.renderNextBtn(),
      nextButtonStyle: myButtonStyle(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      doneButtonStyle: myButtonStyle(),

      // Dot indicator
      colorDot: Color(0x33FFA8B0),
      colorActiveDot: Color(0xffFFA8B0),
      sizeDot: 13.0,

      // Show or hide status bar
      hideStatusBar: true,
      backgroundColorAllSlides: Colors.grey,

      // Scrollbar
      verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
    );
  }
}