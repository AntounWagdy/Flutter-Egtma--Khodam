import 'package:flutter/material.dart';
import 'utils.dart';

class Mawdo3_4_7ayawant extends StatelessWidget {
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
          appBar: Utils.MyAppBar("الكائنات الأربعة غير المتجسدين",1.0,context),
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
            child: ListView(padding: EdgeInsets.all(4.0), children: <Widget>[
              Center(
                  child: Text(
                "الكائنات الأربعة غير\nالمتجسدين",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0),textAlign: TextAlign.center,
              )),
              createParagraph(Utils.Mawdo331,0),
              createParagraph("أ- الأربعة الإنجيليين",1),
              createParagraph("1-شبة إنسان : القديس متى : تكلم عن المسيح الإنسان \n2-شبة أسد : القديس مرقص : صوت صارخ في البرية \n3-شبة الثور : القديس لوقا : تكلم عن الذبائح و الخدمة الكهنوتية \n4-شبة النسر : القديس يوحنا : حلق بنا في معرفة الاهوت",2),
              createParagraph("ب- جوانب حياة ربنا يسوع المسيح",1),
              createParagraph("1-شبة إنسان : تجسدة\n2-شبة الثور : ذبيحة المسيح\n3-شبة أسد : القيامة\n4-شبة النسر : صعودة وجلوسة عن يمين الآب", 2),
              createParagraph("ج- الخلائق ممثلة أمام العرش الإلهي", 1),
              createParagraph("1-شبة إنسان : يطلب عن البشرية\n2-شبة الثور : يطلب عن الحيوانات الهادئة اللأليفة\n3-شبة أسد : يطلب عن الحيوانات المفترسة\n4-شبة النسر : يطلب عن الطيور", 2),
              Container(height: 8.0,),
              createParagraph("- وجه التشابه والإختلاف بين رؤيا حزقيال ورؤيا يوحنا الرائي للأربعة كائنات غير المتجسدين :", 0),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Table(children: <TableRow>[
                  TableRow(children: <Widget>[
                    createTableHead("يوحنا الرائى"),
                    createTableHead("حزقيال"),
                  ]),
                  TableRow(children: <Widget>[
                    createTableCell("كل كائن لوحدة (كانت رؤيتة من قريب)"),
                    createTableCell("كل واحد له أربعة أوجة ( كانت رؤيتة من بعيد)"),
                  ]),
                  TableRow(children: <Widget>[
                    createTableCell("لهم ستة أجنحة (نظر من فوق العرش فنظر الجناحين الذين يسترون بهم وجهوهم)"),
                    createTableCell("لهم أربعة أجنحة (نظر من تحت العرش فلم يرى الجناحين الذين يسترون وجهوهم)"),
                  ]),
                ],textDirection: TextDirection.rtl,border: TableBorder.all(color: Colors.black),),
              )
            ]),
          ),
        ),
        Center(
          heightFactor: 0.0,
          child: Hero(
            tag: "a3",
            child: Utils.seal,
          ),
        )
      ]),
    );
  }

  createParagraph(String s,padding) {
    Widget x = Text(
        s,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 20.0,
        ),
        textDirection: TextDirection.rtl,
      );
    if(padding == 0)
      return x;
    else if(padding == 1)
      return Padding(padding: EdgeInsets.only(right: 40.0),child: Text(
        s,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
        ),
        textDirection: TextDirection.rtl,
      ),);
    else
      return Padding(padding: EdgeInsets.only(right: 80.0),child: x,);
  }

  createTableCell(String s) {
    return Text(
      s,
      style: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 20.0,
      ),
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
    );

  }

  createTableHead(String s) {
    return Text(
      s,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20.0,
      ),
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
    );
  }
}
