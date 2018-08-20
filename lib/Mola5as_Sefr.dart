import 'package:flutter/material.dart';
import 'utils.dart';

class Mola5as_Sefr extends StatelessWidget{
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
          appBar: Utils.MyAppBar("مثل عود الكرم",0),
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
              padding: EdgeInsets.all(4.0),
              children: <Widget>[
                Center(
                    child: Text(
                      "ملخص السفر",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0),
                    )),
                createParagraph("حينما نقترب من كتابات الأنبياء التي تحدثنا عن المستقبل يتكرر في أسماعنا ما قيل ليوحنا في رؤياه (4:1) \”اصعد هنا فأريك\”. ونبوة حزقيال التي اشتهرت بصعوبتها تحتاج لفهمها صعودًا بالفكر إلى أعلى وابتعادًا عن الأرضيات. وكلما نجحنا في هذا يزداد فهمنا لها وتزداد الأعماق التي يأخذنا إليها الروح القدس، كما تزداد المياه المقدسة عمقًا (حزقيال 47. ففي البداية تبدو هذه المياه وكأننا في مواضع نستطيع أن نسبر غورها ومع التقدم نكتشف كم هي عميقة، ولكن مع هذا العمق يخرج من مجاريها ما يفرح مدينة الله حيث يسكن الله مع شعبه"),
                createHeader("شخصية كاتب السفر"),
                createParagraph("الكاتب هو حزقيال، ومعنى اسمه \”قوة الله\” أو \”تَقَوَّى بالله\” أو تمنطق بحزام. وهذا الاسم يشير لما عمله النبي فعلًا إذ قد قواه الله وأظهر قوته فيه، وعمومًا من يدعوه الله للخدمة يمنحه القوة للتنفيذ، ولكن كان الشعب في أيام حزقيال في حالة سيئة جدًا، والله أعطاه القوة ليتنبأ بلا خوف لهذا الشعب، وليتنبأ بالخراب على أورشليم بسبب خطايا شعبها، لذلك قال له الله \”ها قد جعلت وجهك صلبًا مثل وجوههم\” (حز 3: 8).\nوقد تنبأ حزقيال في أوائل فترة السبي، وكان هو ودانيال ضمن المسبيين. وعاش حزقيال بجوار نهر خابور. وكان متزوجًا. ولد حوالي سنة 623 ق.م. وكان والده واسمه بوزي كاهنًا من نسل صادوق. إذًا فقد عايش النبي الخدمة الكهنوتية في الهيكل، وكان يحلم في صباه بالكهنوت حينما يصل لسن الثلاثين التي يبدأ فيها الكاهن عمله. ولكن جاء السبي وحطم هذه الآمال."),
                createHeader("زمن كتابة النبوة ومكان كتابتها"),
                createParagraph("كتبت أثناء سبي بابل حيث استُعبِد إسرائيل. لذلك كتبت للمسبيين هناك. ومن المعروف أن حزقيال ودانيال هما النبيين الوحيدين اللذين تنبئا خارج إسرائيل باستثناء يونان الذي أرسل ليتنبأ لنينوى. وقد ذهب الشعب للسبي بسبب سقوطهم في العبادات الوثنية واحتقارهم للأنبياء وخطاياهم المتعددة. ولكن الله لم يتركهم بل أرسل لهم هذا النبي وسط أحزانهم وآلامهم في السبي ليقنعهم بالتوبة، وليتأكدوا أن ما يحدث لهم ليس هدفه إفنائهم بل تأديبهم. وفي السنة الخامسة من السبي أي الخامسة من ملك صدقيا وقبل خراب أورشليم النهائي سنة 586 ق م. انفتحت السموات لأول مرة أمام حزقيال ليرى رؤيا الرب والمركبة الإلهية النارية فيبدأ عمله النبوي الذي استمر 22 عامًا. ولقد بدأ عمله النبوي من السنة الخامسة من السبي (1: 2) حتى السنة 27 من السبي 29: 17 وفي السنة 25 كتب الإصحاحات 40-48 (40: 1)."),
                createHeader("مادة النبوة وموضوعها"),
                createParagraph("كثير منها غامض يصعب فهمه، ولكن بالاتضاع الشديد والارتفاع عن الأرضيات سوف تخرج بفوائد كثيرة، وما سوف نعرفه من أسرار هذه النبوة سيقوى إيماننا ويوطد رجاؤنا في إلهنا. وهذا فيما يختص بالرؤى، أما العظات فهي سهلة وتتحدث عن تعديات الشعب على وصايا الله وتدعوهم للتوبة عوضًا عن التذمر ويتضح من النبوة أن الشعب بدأ يصدقه ويلتف حوله عندما وصل رسول من أورشليم ينبئ بسقوط المدينة حسب ما كان حزقيال يتنبأ به. وكان قلب النبي يتمزق من أخبار خراب الهيكل وأورشليم، ولكننا نجد بعد ذلك أن الله الذي يحب أن يعزى أولاده، فتح عينيه ليرى رؤى متعددة عن أورشليم جديدة وهيكل جديد يحمل سمات العصر الماسيانى، عصر الإنجيل وتأسيس مملكة المسيح. ونرى في نبوة حزقيال أن الله يريه ما يحدث في أورشليم بالرغم من وجوده في بابل، ونرى النبي يتنبأ على من في أورشليم.\nوالسفر يشتمل على الوعيد بالخراب ثم وعود معزية بأيام بركة، فالله لا يدمر لينتقم بل ليؤدب، وهذا ما قاله لأرمياء 1: 10. ودائمًا هناك بقية تستفيد من التأديب (نوح وفلكه ينجو من الطوفان، ولوط وبناته ينجون من سدوم)"),
                createHeader("استشهاد حزقيال النبي"),
                createParagraph("تقول تقاليد اليهود أن المسبيين قتلوه في بابل بسبب أمانته وجرأته وتوبيخه لهم، ويقال أنهم سحلوه على الأحجار وظلوا يسحبونه حتى تحطم رأسه"),
                createHeader("أقسام أسفار حزقيال"),
                createParagraph("1-تهديدات قبل سقوط أورشليم، وإنذارات بعقوبة الخطية، ودعوة للتوبة إصحاحات (1-24).\n2-نبوات ضد الأمم الذين ظلموا شعب الله (25-32).\n3-نبوات عن الرجوع من السبي، وفضح حالتهم الراهنة، ووصف لرجوع اليهود في المستقبل وهلاك أعدائهم وسعادتهم الروحية، وهي نبوات تتكلم عن عودة اليهود من بابل، لكنها تشير لزمان ملك المسيح في كنيسته (33-39).\n4-الهيكل الجديد وأورشليم (40-48)."),
                createHeader("لخط العام للسفر"),
                createParagraph("في الإصحاح الأول نرى الله في مجده، وفي هذا إشارة للحالة التي خلق عليها آدم في الجنة، إذ كان يرى الله. وبسبب الخطية فقدنا رؤية الله، وهذا ما نلمسه في الإصحاحات (2-24). إذ دخل الفساد والخراب للعالم بسبب الخطية. وفي الإصحاحات (25-32) نبوات ضد الأمم وهي ترمز للشيطان وهذه نبوات بضرب مملكة الشيطان. ثم تأتى الإصحاحات (33-39) التي تشير لإسرائيل الجديد أي الكنيسة فالله يقلع ليغرس، يقلع إسرائيل القديم ليزرع إسرائيل الجديد أي الكنيسة. يخلع الإنسان العتيق لتحيا الكنيسة كخليقة جديدة. وتأتى الإصحاحات 40-48 لتشرح هذه الكنيسة بطريقة رمزية فهي تتكلم عن هيكل جديد يتم تأسيسه، والهيكل الجديد هو جسد المسيح  يو 2:21."),
                createHeader("سبى بابل"),
                createParagraph("تم هذا السبي على أربع مراحل. وبدأ سنة 606 ق.م. وانتهى سنة 536 ق.م. وبدأ السبي سنة 606 ق م. في أيام يهوياقيم الملك وانتهى سبى بابل بسقوط دولة بابل ومجيء كورش ملك الفرس للحكم، وتحرير السبايا سنة 536 ق, م. أي أن مدة السبي كانت 70 سنة حسب ما تنبأ أرمياء النبي 25: 12 و 29: 10."),
                createRedBlackParagraph("1-يوشيا ", "بدأت في عهد هذا الملك الصالح إصلاحات كثيرة، ولكنها للأسف لم تستطع أن تصلح من أحوال الشعب الداخلية، بل إقتصرت الإصلاحات على الممارسات الطقسية دون تغيير في قلب الشعب الذي كان قد فسد، وبدأت نبوة أرمياء النبي خلال حكم هذا الملك، واستمر يتنبأ لمدة 18 سنة خلال ملكه، ثم أكمل نبواته لمدة تربو على الأربعين عامًا. وقتل يوشيا في معركة مع نخو فرعون مصر الذي أقام ابنه يهو أحاز ملكًا على يهوذا."),
                createRedBlackParagraph("2-يهوأحاز ", "كان شريرًا وعزله نخو وأسره إلى أن مات في مصر. وأقام أخوه يهوياقيم بدلًا منه."),
                createRedBlackParagraph("3-يهوياقيم ", "كان شريرًا جدًا، وحدث في عهده ارتداد للوثنية. وفي سنة 606 ق. م. هزم نبوخذ نصر نخو ملك مصر في معركة كركميش واستولى على أملاكه ومن ضمنها مملكة يهوذا، وجاء نبوخذ نصر إلى أورشليم واستولى على جزء من آنية بيت الله، وسبا بعض سكان أورشليم وكان منهم دانيال ورفاقه (وكان هذا السبي الأول) دا 1: 1. ثم عصى يهوياقيم وتمرد فحذره أرمياء من عاقبة ذلك عليه وعلى الشعب والهيكل وأورشليم، ولكنه حينما رأى الدَرْج الذي به نبوات أرمياء مزقه وألقاه في النار. وصعد عليه نبوخذ نصر وأسره فمات في وكان هذا بعد ما حوصرت أورشليم بجيوش بابل لمدة 18 شهرًا. وفي هذه المرة لم يحرق نبوخذ نصر أورشليم ولا هدم الهيكل ولا الأسوار، ولكنه أخذ سبايا (وكان هذا هو السبي الثاني)."),
                createRedBlackParagraph("4- يهوياكين ", "ابن يهوياقيم، وكان شريرًا. وحاصر نبوخذ نصر أورشليم ثانية في أيامه، فاستسلم هو ومن معه، فسباهم نبوخذ نصر إلى بابل مع آخرين. (وكان هذا السبي الثالث). وملك متانيا عمه باسم صدقيا (2مل 24: 10-16). وفي هذا السبي الثالث تم سبى حزقيال حز 1: 1، أي بعد دانيال بحوالي ثمان سنوات. وهنا انكسر قلب حزقيال حينما رأى آنية بيت الرب وقد نهبها الوثنيون، كما حملوا معهم أيضًا خيرة الشباب للسبي وهو منهم."),
                createRedBlackParagraph("5-صدقيا ", "كان شريرًا ونجس الهيكل بالعبادات الوثنية، وتمرد بعد ملكه بثمان سنوات على نبوخذ نصر في السنة التاسعة لحكمه وحاصر أورشليم، وهرب صدقيا وقبضوا عليه، وقتلوا أولاده أمام عينيه ثم قلعوا عينيه، وأخربوا أورشليم وهدموا سورها وهيكلها، وأحرقوا كل شيء، وسبوا سكان أورشليم، ولم يتركوا سوى مساكين الأرض (وكان هذا هو السبي الرابع) 2مل 25: 1-21. وكانت هذه المراحل للسبى، حتى يعطيهم الله فرصًا للتوبة، فالله يطيل أناته لعل طول أناته تقتادنا للتوبة (رو 2: 4). وكان هدم الهيكل وخرابه سببًا لكسر قلب كل يهودي حقيقي، خصوصًا حزقيال النبي. لذلك ولكي يعزى الله حزقيال النبي والكاهن ويعزى المؤمنين الأتقياء، أظهر الله أن الهيكل سيعاد بنائه (إصحاحات 40-48) ولكن كان المقصود حقيقة بهذه الإصحاحات، كنيسة المسيح"),

              ],
            ),
          ),
        ),
        Center(
          heightFactor: 0.0,
          child: Hero(
            tag: "a1",
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
  createParagraph(String s) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Center(
        child: Text(s,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 20.0,),
          textDirection: TextDirection.rtl,),
      ),
    );
  }
  createRedBlackParagraph(String s, String t) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0),
      child: new RichText(text: new TextSpan(text: s,style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20.0,color: Colors.red),children:<TextSpan>[TextSpan(text:t ,style:TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 20.0,color: Colors.black) )]),textDirection: TextDirection.rtl,),
    );
  }
}