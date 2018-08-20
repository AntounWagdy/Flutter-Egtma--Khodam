import 'package:flutter/material.dart';
import 'utils.dart';

class Moqdma extends StatelessWidget {
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
              child: this.getMyMawade3Screen(context)),
          appBar: Utils.MyAppBar("عن المؤتمر", 0,context),
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
              child:
                      ListView(padding: EdgeInsets.all(4.0), children: <Widget>[
                    Center(
                        child: Text(
                      "عن المؤتمر",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0,
                      color: Utils.MyTextColor),
                    )),
                    Center(
                        child: Text(
                      "اخوتنا الاحباء مؤتمر هذا العام هو تجمع حول كلمة الله الحيه الفعاله من خلال دراستنا بنظره شامله لسفر حزقيال حيث سنلتقي مع تعاملات الله مع الخادم في دعوته لحزقيال وحدود مسئوليات الخادم وماهي ملامح الخدام الكذبه أيضاً كيف يسند الله الخادم بإعلانات من خلال دراستنا لرؤي في السفر وكيف يستخدم الله الخادم كوسيله ايضاح لاجل توصيل رسالته للشعب . أيضاً سنلقي الضوء علي تعاملات الله مع الخادم( كمخدوم) من خلال خطايا الشعب وتمردهم وكيف أن الله يحتوي النفس ويداويها . نطلب من الله أن يستخدم هذا المؤتمر لأجل توبتنا ومنفعتنا الروحيه والخدميه ونتمني دوما تواجدكم وانتم في فرح وسلام ومحبه ونحن جميعاً جسد واحد ليسوع المسيح الرأس",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20.0),
                      textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                    )),
                        Center(
                          child: Text("وكل عام وحضراتكم بخير",textDirection: TextDirection.rtl,textAlign: TextAlign.center,style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20.0
                          ),),
                        )
                  ]))
        ]));
  }
}
