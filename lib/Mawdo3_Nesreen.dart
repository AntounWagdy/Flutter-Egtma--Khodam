import 'package:flutter/material.dart';
import 'utils.dart';

class Mawdo3_Nesreen extends StatelessWidget {
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
          appBar: Utils.MyAppBar("مثل النسرين", 0,context),
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
            child: ListView(children: <Widget>[
              Center(
                  child: Text(
                "مثل النسرين (حز1:17-12)",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0),
              )),
              createHeader("نسرين"),
              createRedBlackParagraph("أولهما ",
                  "عظيم كبير الجناحين  ريشه كثيف متنوع الألوان . يدخل الى لبنان و يقتلع منها غصون أرز مختارة لينقلها الى أرض كنعان مدينة التجار فتصير كرمة لها ساق قصير . ويقوم ايضا ليحمل زروع الى خارج لبنان ليغرسها قرب مياه جارية"),
              Container(
                height: 8.0,
              ),
              createRedBlackParagraph("وثانيهما ",
                  "يشبهه إلا فى تنوع ألوان ريش جناحيه ، واذ بالكرمة التى غرسها النسر الاول مالت اليه – النسر الثانى -  بجذورها و التجأت اليه بأغصانها ليسقيها .. الا ان رجاؤها قد خاب كما من عدو اذ قد تيبست من الجذور و حتى الاوراق!"),
              Container(height: 16.0,),
              Center(
                child: Text(
                  "النسر الأول",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25.0
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
              createRedBlackParagraph("عظيم: ", "هو ملك بابل"),
              createRedBlackParagraph("كبير الجناحين: ", "ريشه قوى"),
              createRedBlackParagraph("ذو تهاويل: ", "متعدد الألوان"),
              createRedBlackParagraph("وأخذ فرع الأرز: ", "فالأرز لا يوجد سوى في لبنان، ولبنان جميلة وخضراء"),
              createRedBlackParagraph("وقصف رأس خراعيبه: ", "الخراعيب هي الأغصان الخضراء"),
              createRedBlackParagraph("إلى أرض التجار: ", "أى بابل"),
              createRedBlackParagraph("وأخذ من زرع الأرض : ", "أي صدقيا، الذي أخذه نبوخذ نصر وأقامه ملكًا."),
              createRedBlackParagraph("وإنعطفت عليه زراجينها: ", "أي دخل صدقيا الملك في معاهدة، وفيها يحمى نبوخذ نصر يهوذا علي أن يخضع صدقيا لنبوخذ نصر"),
              createRedBlackParagraph("كرمة منتشرة قصيرة الساق : ", "أي ضعيفة وخاضعة لملك بابل"),
              Container(height: 16.0,),
              Center(
                child: Text(
                  "النسر الثانى",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
              createRedBlackParagraph("أخر عظيم: ", "هو فرعون مصر، لكنه هنا ليس كثير الألوان إذ لا توجد أمم كثيرة خاضعة له"),
              createRedBlackParagraph("فإذا بهذه الكرمة قد عطفت عليه أصولها: ", "حاول صدقيا أن يقيم معاهدة مع فرعون، وحنث بعهده وحلفه لنبوخذ نصر"),
              Container(height: 16.0,),
              createBoldParagraph("(حز9:17-10) ‘هل تنجح افلا يقلع اصولها ويقطع ثمرها فتيبس كل من اوراق اغصانها تيبس وليس بذراع عظيمة أو بشعب كثير ليقلعوها من اصولها. ها هي المغروسة فهل تنجح إلا تيبس يبسا كان ريحا شرقية أصابتها في خمائل نبتها تيبس’"),
              createParagraph("هل ينجح صدقيا في معاهدته مع مصر؟ قطعاُ لا"),
              createRedBlackParagraph("أولاً: ", "لأنه أهان الله أمام الوثنيين البابليين اذ كسر وإستخف بالقسم الذي قسمه وعهده مع ملك بابل الذي أقسم فيه بيهوه إلهه فنقضه لعهده هو إهانة للاسم المقدس"),
              createRedBlackParagraph("ثانياً: ", "لأنه يعتمد على ملك مصر وملعون من يتكل على ذراع بشروالنتيجة أن الله سيقلع أصول هذه الأرزة أي عائلة صدقيا"),
              createRedBlackParagraph("بذراع عظيمة: ", "هي جيش بابل فلم يكن خراب صدقيا بسبب عظمة وقوة بابل ولكن لأن الله قد تخلى عنه لأنه أهانه")
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

  createHeader(String s) {
    return Text(
      s,
      style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 25.0,
          decoration: TextDecoration.underline),
      textDirection: TextDirection.rtl,
    );
  }
  createBoldParagraph(String s) {
    return Center(
      child: Text(s,
        style: TextStyle(//color: Colors.red,
          fontWeight: FontWeight.w700,
          fontSize: 20.0,),
        textDirection: TextDirection.rtl,),
    );
  }

  createRedBlackParagraph(String s, String t) {
    return new RichText(
      text: new TextSpan(
          text: s,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
              color: Utils.MyTextColor),
          children: <TextSpan>[
            TextSpan(
                text: t,
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20.0,
                    color: Colors.black))
          ]),
      textDirection: TextDirection.rtl,
    );
  }

  createParagraph(s) {
    return Center(
      child: Text(s,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 20.0,),
        textDirection: TextDirection.rtl,),
    );
  }
}
