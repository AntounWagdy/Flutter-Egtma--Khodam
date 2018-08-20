import 'package:flutter/material.dart';
import 'utils.dart';

class Program extends StatelessWidget {
  var index;
  Program(x) {
    index = x;
  }

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
          appBar: Utils.MyAppBar("برنامج المؤتمر",0,context),
        ));
  }

  Widget getMySecondScreen(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.0),
      margin: const EdgeInsets.only(top: 8.0),
      child: getList(context)
    );
  }

  getListChild(String text, String time,Image img,BuildContext context) {
    final planetCard = new Container(
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
            child: Column(
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 23.0),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
                Container(height: 5.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Utils.time,
                      Container(width: 6.0,),
                      Text(time,style: TextStyle(fontSize: 20.0),textDirection: TextDirection.rtl,)
                    ],
                  ),
                )
              ],
            ),
          )),
    );

    final planetThumbnail = Container(
        margin: new EdgeInsets.symmetric(vertical: (img == Utils.seal)?16.0:0.0),
        alignment: FractionalOffset.centerRight,
        child: img);

    return Container(
        height: 90.0,
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

  header(String s) {
    return Padding(
      padding: const EdgeInsets.only(right: 50.0),
      child: Center(
          child: Text(
            s,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30.0,
                color: Colors.white),
          )),
    );
  }

  getList(context) {
    if(index == 0)
      return ListView(
        children: <Widget>[
          header("يوم الأربعاء"),
          getListChild("عشيه","6:00 ~ 6:30",Utils.pray,context),
          getListChild("الشعار","6:30 ~ 6:45", Utils.music,context),
          getListChild("مقدمة تاريخية","6:45 ~ 7:30",Utils.hrof ,context),
          getListChild("فترة حرة","7:30 ~ 8:30", Utils.Break,context),
          getListChild("عشاء","8:30 ~ 10:00", Utils.eat,context),

          Container(height: 16.0,),
          header("يوم الخميس"),
          getListChild("القداس","7:00 ~ 9:00",Utils.pray,context),
          getListChild("الفطار","9:00 ~ 10:00",Utils.eat,context),
          getListChild("شاى","10:00 ~ 10:30",Utils.drink,context),
          getListChild("ترانيم","10:30 ~ 11:30",Utils.music2,context),
          getListChild("\"إسمع ما أنا مكلمك به\"","11:30 ~ 12:30",Utils.Book1,context),
          getListChild("مثل الأسدين و عود الكرم","12:30 ~ 1:30",Utils.Book2,context),
          getListChild("غذاء وراحة","1:30 ~ 5:00",Utils.eat2,context),
          getListChild("عشية","5:00 ~ 5:30",Utils.pray,context),
          getListChild("\"فنظرت ....\"","5:30 ~ 8:30",Utils.Book3,context),
          getListChild("إجتماع الصلاة","8:30 ~ 9:00",Utils.pray,context),
          getListChild("عشاء","9:00 ~ 10:00",Utils.eat2,context),

          Container(height: 16.0,),
          header("يوم الجمعه"),
          getListChild("القداس","7:00 ~ 9:00",Utils.pray,context),
          getListChild("الفطار","9:00 ~ 10:00",Utils.eat,context),
          getListChild("شاى","10:00 ~ 10:30",Utils.drink,context),
          getListChild("ترانيم","10:30 ~ 11:00",Utils.music,context),
          getListChild("\"جعلتك آيه\"","11:00 ~ 12:30",Utils.Book1,context),
          getListChild("مثل النسرين","1:30 ~ 2:00",Utils.Book2,context),
          getListChild("غذاء وراحة","2:00 ~ 5:00",Utils.eat2,context),
          getListChild("عشية","5:30 ~ 6:00",Utils.pray,context),
          getListChild("\"توبوا وإرجعوا عن أصنامكم\"","6:00 ~ 7:00",Utils.Book2,context),
          getListChild("تسبحة","7:00 ~ 9:00",Utils.pray,context),
          getListChild("عشاء","9:00 ~ 10:00",Utils.eat,context),

          Container(height: 16.0,),
          header("يوم السبت"),
          getListChild("القداس","7:00 ~ 9:00",Utils.pray,context),
          getListChild("الفطار","9:00 ~ 10:00",Utils.eat,context),
          getListChild("شاى","10:00 ~ 10:30",Utils.drink,context),
          getListChild("شخصية حزقيال النبى","11:00 ~ 12:00",Utils.Book2,context),
          getListChild("صلاة ختام المؤتمر","12:00",Utils.pray,context),
          getListChild("تسليم الغرف","1:00",Utils.Break,context),
          getListChild("غذاء","2:00",Utils.eat,context),


        ],
      );
    else if (index == 1){
      return ListView(
          children: <Widget>[
          header("يوم الأربعاء"),
          getListChild("عشيه","6:00 ~ 6:30",Utils.pray,context),
          getListChild("الشعار","6:30 ~ 6:45", Utils.music,context),
          getListChild("مقدمة تاريخية","6:45 ~ 7:30",Utils.hrof ,context),
          getListChild("فترة حرة","7:30 ~ 8:30", Utils.Break,context),
          getListChild("عشاء","8:30 ~ 10:00", Utils.eat,context),

          Container(height: 16.0,),
          header("يوم الخميس"),
          getListChild("القداس","7:00 ~ 9:00",Utils.pray,context),
          getListChild("الفطار","9:00 ~ 10:00",Utils.eat,context),
          getListChild("شاى","10:00 ~ 10:30",Utils.drink,context),
          getListChild("ترانيم","10:30 ~ 11:30",Utils.music2,context),
          getListChild("\"إسمع ما أنا مكلمك به\"","11:30 ~ 12:30",Utils.Book1,context),
          getListChild("مثل الأسدين و عود الكرم","12:30 ~ 1:30",Utils.Book2,context),
          getListChild("غذاء وراحة","1:30 ~ 5:00",Utils.eat2,context),
          getListChild("عشية","5:00 ~ 5:30",Utils.pray,context),
          getListChild("\"فنظرت ....\"","5:30 ~ 8:30",Utils.Book3,context),
          getListChild("إجتماع الصلاة","8:30 ~ 9:00",Utils.pray,context),
          getListChild("عشاء","9:00 ~ 10:00",Utils.eat2,context),

]);
  }
  else if (index == 2){
      return ListView(
          children: <Widget>[
            header("يوم الجمعه"),
            getListChild("القداس","7:00 ~ 9:00",Utils.pray,context),
            getListChild("الفطار","9:00 ~ 10:00",Utils.eat,context),
            getListChild("شاى","10:00 ~ 10:30",Utils.drink,context),
            getListChild("ترانيم","10:30 ~ 11:00",Utils.music,context),
            getListChild("\"جعلتك آيه\"","11:00 ~ 12:30",Utils.Book1,context),
            getListChild("مثل النسرين","1:30 ~ 2:00",Utils.Book2,context),
            getListChild("غذاء وراحة","2:00 ~ 5:00",Utils.eat2,context),
            getListChild("عشية","5:30 ~ 6:00",Utils.pray,context),
            getListChild("\"توبوا وإرجعوا عن أصنامكم\"","6:00 ~ 7:00",Utils.Book2,context),
            getListChild("تسبحة","7:00 ~ 9:00",Utils.pray,context),
            getListChild("عشاء","9:00 ~ 10:00",Utils.eat,context),
          ]);
  }
  else if (index == 3){
      return ListView(
        children: <Widget>[
          header("يوم السبت"),
          getListChild("القداس","7:00 ~ 9:00",Utils.pray,context),
          getListChild("الفطار","9:00 ~ 10:00",Utils.eat,context),
          getListChild("شاى","10:00 ~ 10:30",Utils.drink,context),
          getListChild("شخصية حزقيال النبى","11:00 ~ 12:00",Utils.Book2,context),
          getListChild("صلاة ختام المؤتمر","12:00",Utils.pray,context),
          getListChild("تسليم الغرف","1:00",Utils.Break,context),
          getListChild("غذاء","2:00",Utils.eat,context),
        ],
      );
    }

  }
}
