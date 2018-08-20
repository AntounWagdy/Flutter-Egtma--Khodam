import 'package:flutter/material.dart';
import 'utils.dart';
import 'Mawdo3_Asaden.dart';
import 'Mawdo3_3od_karm.dart';
import 'Mawdo3_4_7ayawant.dart';
import 'Mahfozat.dart';
import 'Program.dart';
class DayOneScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("assets/images/bg2.png"),
                    fit: BoxFit.cover),
              ),
              child: this.getMySecondScreen(context)),
          appBar: Utils.MyAppBar("اليوم الأول",0),
        ));
  }

  Widget getMySecondScreen(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.0),
      margin: const EdgeInsets.only(top: 8.0),
      child: ListView(
        children: <Widget>[
          getListChild("برنامج اليوم", context),
          getListChild("مثل الأسدين", context),
          getListChild("مثل عود الكرم", context),
          getListChild("الكائنات الأربعة غير المتجسدين", context),
          getListChild("محفوظات اليوم", context)
        ],
      ),
    );
  }

  Widget getListChild(String text, context) {
    String MyTag = (text == "مثل الأسدين")?"a1":(text=="مثل عود الكرم")?"a2":(text=="الكائنات الأربعة غير المتجسدين")?"a3":(text == "محفوظات اليوم")?"a4":"a5";

    final planetCard = GestureDetector(
      onTap: () {
        if(text=="مثل الأسدين")
          Navigator.push(context, MaterialPageRoute(builder: (context) => Mawdo3_Asaden()));
        else if(text=="مثل عود الكرم")
          Navigator.push(context, MaterialPageRoute(builder: (context) => Mawdo3_3od_karm()));
        else if (text == "الكائنات الأربعة غير المتجسدين")
          Navigator.push(context, MaterialPageRoute(builder: (context) => Mawdo3_4_7ayawant()));
        else if (text == "محفوظات اليوم")
          Navigator.push(context, MaterialPageRoute(builder: (context) => Mahfouzat(1)));
        else
          Navigator.push(context, MaterialPageRoute(builder: (context) => Program(1)));

          },
      child: new Container(
        height: 105.0,
        margin: new EdgeInsets.only(right: 46.0),
        decoration: new BoxDecoration(
          color: Colors.white.withOpacity(0.35),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
          text,
          style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 27.0),textAlign: TextAlign.center,textDirection: TextDirection.rtl,
        ),
            )),
      ),
    );


    final planetThumbnail = GestureDetector(
      onTap: () {
        if(text=="مثل الأسدين")
          Navigator.push(context, MaterialPageRoute(builder: (context) => Mawdo3_Asaden()));
        else if(text=="مثل عود الكرم")
          Navigator.push(context, MaterialPageRoute(builder: (context) => Mawdo3_3od_karm()));
        else if (text == "الكائنات الأربعة غير المتجسدين")
          Navigator.push(context, MaterialPageRoute(builder: (context) => Mawdo3_4_7ayawant()));
        else if (text == "محفوظات اليوم")
          Navigator.push(context, MaterialPageRoute(builder: (context) => Mahfouzat(1)));
        else
          Navigator.push(context, MaterialPageRoute(builder: (context) => Program(1)));

      },
      child: Container(
          margin: new EdgeInsets.symmetric(vertical: 16.0),
          alignment: FractionalOffset.centerRight,
          child: Hero(tag:MyTag,child: Utils.seal),
        ),
    );

    return Container(
        height: 112.0,
        width: 500.0,
        margin: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        ));
  }
}
