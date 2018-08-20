import 'package:flutter/material.dart';
import 'utils.dart';
import 'Mola5as_Sefr.dart';
import 'Mahfozat.dart';
import 'Program.dart';

class DayThreeScreen extends StatelessWidget {
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
          appBar: Utils.MyAppBar("اليوم الثالث", 0,context),
        ));
  }

  getMySecondScreen(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.0),
      margin: const EdgeInsets.only(top: 8.0),
      child: ListView(
        children: <Widget>[
          getListChild("برنامج اليوم", context),
          getListChild("ملخص السفر", context),
          getListChild("محفوظات اليوم", context)
        ],
      ),
    );
  }

  getListChild(String text, BuildContext context) {
    String MyTag = (text == "ملخص السفر")?"a1":(text == "محفوظات اليوم")?"a2":"a3";

    final planetCard = GestureDetector(
      onTap: () {
        if(text=="ملخص السفر")
          Navigator.push(context, MaterialPageRoute(builder: (context) => Mola5as_Sefr()));
        else if (text == "محفوظات اليوم")
          Navigator.push(context, MaterialPageRoute(builder: (context) => Mahfouzat(3)));
        else
          Navigator.push(context, MaterialPageRoute(builder: (context) => Program(3)));

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
        if(text=="ملخص السفر")
          Navigator.push(context, MaterialPageRoute(builder: (context) => Mola5as_Sefr()));
        else if (text == "محفوظات اليوم")
          Navigator.push(context, MaterialPageRoute(builder: (context) => Mahfouzat(3)));
        else
          Navigator.push(context, MaterialPageRoute(builder: (context) => Program(3)));
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