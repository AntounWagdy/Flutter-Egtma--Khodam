import 'package:flutter/material.dart';
import 'utils.dart';

class Mahfouzat extends StatelessWidget {
  var title;
  var day;

  Mahfouzat(day) {
    this.day = day;
  }

  @override
  Widget build(BuildContext context) {
    title = "محفوظات اليوم " +
        ((day == 1) ? "الأول" : (day == 2) ? "الثانى" : "الثالث");
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("assets/images/bg2.png"),
                    fit: BoxFit.cover),
              ),
              child: this.getMyMawade3Screen(context)),
          appBar: Utils.MyAppBar(title, 0),
        ));
  }

  getMyMawade3Screen(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
        child: Stack(children: <Widget>[
          Container(
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
              child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: ListView(
                      padding: EdgeInsets.all(4.0), children: <Widget>[
                    createHeader(title),
                    createHeader2("الإنجيل"),
                    createParagraph((day==1)?Utils.Engel5edma1:(day == 2)?Utils.Engel5edma2:Utils.Engel5edma3),
                    createHeader2("\nالقطع"),
                    createParagraph((day == 1)?Utils.Qeta35edma1:(day == 2)?Utils.Qeta35edma2:Utils.Qeta35edma3),

                  ]))),
          Center(
            heightFactor: 0.0,
            child: Hero(
              tag: (day == 1)?"a4":"a2",
              child: Utils.seal,
            ),
          )
        ]));
  }

  createHeader(String s) {
    return Center(
        child: Text(
          s,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25.0),textAlign: TextAlign.center,
        ));
  }

  createHeader2(String s) {
    return Center(
        child: Text(
          s,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0),textAlign: TextAlign.center,
        ));
  }
  createParagraph(String s) {
    Widget x = Text(
      s,
      style: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 18.0,
      ),
      textDirection: TextDirection.rtl,
    );
    return x;
  }
}
