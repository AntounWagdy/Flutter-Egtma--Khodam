import 'package:flutter/material.dart';
import 'utils.dart';

class Mawdo3_3od_karm extends StatelessWidget {
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
          appBar: Utils.MyAppBar("مثل عود الكرم",0,context),
        ));
  }

  Widget getMyMawade3Screen(BuildContext context) {
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
              padding: EdgeInsets.all(4.0),
              children: <Widget>[
                Center(
                    child: Text(
                      "إسرائيل الكرمة غير الأمينة لله",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0),
                    )),
                Center(
                    child: Text(
                      "(حز 15) – (حز 17 : 22 – 24 )",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0),textDirection: TextDirection.rtl,
                    )),
                Container(height: 3.0,),
                createHeader("الكرمه في الكنيسة لها عدة رموز :-"),
                createParagraph(Utils.Mawdo321),
                Container(height: 1.0,),//
                createHeader("عود الكرم (15)"),
                Container(height: 1.0,),
                createHeader2("الفرق بين عود الكرم وباقي الأشجار:"),
                createParagraph(Utils.Mawdo322),
                Container(height: 1.0,),//
                createHeader("عود الكرم (17 : 22 - 24)"),
                createRedBlackParagraph("الغصن الجديد:"," المسيح و ستكون كنيسته عاليه سماوية"),
                createRedBlackParagraph("على جبل عالٍ شامخ:", " ستكون راسخة ثابتة، والمسيح هو غصن أُخِذ من شجرة أرزعائلة داود (و قد سمى المسيح غصنًا في أماكن كثيرة في العهد القديم)"),
                createRedBlackParagraph("وضعت الشجرة الرفيعة:", " اليهود رفضوا"),
                createRedBlackParagraph("ورفعت الشجرة الوضيعة:", " الأمم قبلوا"),
                createRedBlackParagraph("ويبست الشجرة الخضراء: ", " كانت خضراء بالمواعيد والعهود كما قال بولس الرسول"),
                createRedBlackParagraph("أفرخت الشجرة اليابسة:", " نحن الذين طعمنا في الزيتونة ولم نكن منها وأصبح لينا كل المجد الذي كان لشعبه في القديم"),
                Container(height: 1.0,), //
                createHeader("عود الكرم (19 : 10 : 14)"),
                createRedBlackParagraph("كانت مثمرة مفرخة وكان لها فروع قوية:", " أي الحكام الأقوياء الصالحين."),
                createRedBlackParagraph("ولهم قضبان متسلطين:", " أي لهم أحكام قوية وقرارات قوية لصالح الحكم."),
                createRedBlackParagraph("أرتفع ساقها:", " أي لم تقف أمامها الأمم، وكانت أورشليم بارزة وسط كل ما حولها، وحتى حينما كان صدقيا ملتزمًا بوعوده مع ملك بابل أزدهرت مملكته بالرغم من شرورها، هذه هي طول أناة الله وبطء غضبه. ولكنها إذ تركت إلهها وأرتدت إلى الوثنية أقتلعت من أرضها، فلقد أثير نبوخذ نصر من خيانة صدقيا له، فإقتلعه بعنف ودمر المدينة وقطع كل فروع العائلة"),
                createRedBlackParagraph("وكأن ريح شرقية يبست ثمارها:", " هذا يعنى سقوط شبابها بالسيف، كأن الريح الشرقية هي تأديب الله لهم على خطاياهم عن طريق ملك بابل"),
                createRedBlackParagraph("وغرست الكرمة في القفر:", " هذا معناه سبى الشعب ليعيش في بابل، وبابل الوثنية بالنسبة لشعب الله تكون كالقفر (وهذه هي حال كل إنسان يجرى وراء شهواته وملذات قلبه، فهو يُحرَم من مياه الروح القدس المعطية ثمارًا، وينقل من مركز البنوة لله ليصير بقلبه الشرير في أرض عدوه إبليس غريبًا وأسيرًا، وتتحطم أغصانه وتصير وقودًا للنار، وتجف أرضه تمامًا وتصير مقفرة)."),
                createRedBlackParagraph("وخرجت نار من فروع عصيها:", " الفرع هنا هو الملك صدقيا نفسه الذي بتمرده على ملك بابل تسبب في هذه النار التي أحرقت أورشليم، وأورشليم في شرها جعلت نفسها كقطع الخشب لنيران غضب الله، وكأن أغصانها عَمِلت كوقود خرابها"),
                createRedBlackParagraph("هي رثاء وتكون لمرثاة:", " هو رثاء لأورشليم لأجل ما سيحل بها من خراب، وهو مرثاة لكل من يترك إلهه فيحترق مثل أورشليم."),
                Container(height: 20.0,),
                Text(Utils.Mawdo323,textAlign: TextAlign.center,style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25.0,color: Utils.MyTextColor)),
              ],
            ),
          ),
        ),
        Center(
          heightFactor: 0.0,
          child: Hero(
            tag: "a2",
            child: Utils.seal,
          ),
        )
      ]
      ),
    );
  }

  createHeader(String s) {
    return Text(s,style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 25.0,
        decoration: TextDecoration.underline),
        textDirection: TextDirection.rtl,);
  }

  createHeader2(String s) {
    return Text(s,style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20.0,
        decoration: TextDecoration.underline),
      textDirection: TextDirection.rtl,);
  }
  createParagraph(String s) {
    return Center(
      child: Text(s,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 20.0,),
        textDirection: TextDirection.rtl,),
    );
  }

  createRedBlackParagraph(String s, String t) {
    return new RichText(text: new TextSpan(text: s,style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20.0,color: Utils.MyTextColor),children:<TextSpan>[TextSpan(text:t ,style:TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 20.0,color: Colors.black) )]),textDirection: TextDirection.rtl,);
  }
}
