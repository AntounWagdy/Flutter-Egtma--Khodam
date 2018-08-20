import 'package:flutter/material.dart';
import 'TaranemContent.dart';
import 'utils.dart';

class Taranem extends StatelessWidget {
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
          appBar: Utils.MyAppBar("الترانيم", 0,context),
        ));
  }

  getMyMawade3Screen(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.0),
      margin: const EdgeInsets.only(top: 8.0),
      child: ListView(
        children: <Widget>[
          getListChild("شعار 2018", context,Utils.She3ar),
          getListChild("أسكن تحت ظل جناحيك", context,Utils.Askon),
          getListChild("إعزف فى حياتك", context,Utils.E3zef),
          getListChild("حكايات العدرا", context,Utils.Hkayat),
          getListChild("دايما بتخبينى", context,Utils.Dayman),
          getListChild("رتل مزاميرك", context,Utils.Ratel),
          getListChild("سلمت نفسى", context,Utils.Salemt),
          getListChild("طوباكى يا مريم", context,Utils.Tobaky),
          getListChild("عالى لفوق", context,Utils.Aly),
          getListChild("علمنى أنتظرك", context,Utils.Almny_Antazerak),
          getListChild("علمنى يا رب أكون صورة", context,Utils.Almny_Akon_sora),
          getListChild("فرحان بيك", context,Utils.Fr7an),
          getListChild("فى واحد بيحبك", context,Utils.Feh_Wa7ed),
          getListChild("فى يوم مريت عليا", context,Utils.Fe_Youm),
          getListChild("كنت مطروحة", context,Utils.Konty_Matro7a),
          getListChild("لا يكون ظلام", context,Utils.La_Ykon_Zalam),
          getListChild("لم ترى عيناً", context,Utils.Lam_Tara),
          getListChild("لما سنين", context,Utils.Lma_Snen),
          getListChild("يا رب إعمل", context,Utils.Ya_Rab_E3mal),
          getListChild("يا ربنا يسوع", context,Utils.Ya_Rabana_Yasou3),
          getListChild("يا من إحتويتنى", context,Utils.Ya_Man_E7tawaytany),

        ],
      ),
    );
  }

  getListChild(String text, BuildContext context,String w) {
    String MyTag = text;
    final planetCard = GestureDetector(
      onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TaranemContent(text,w)));
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
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24.0),textAlign: TextAlign.center,textDirection: TextDirection.rtl,
              ),
            )),
      ),
    );
    final planetThumbnail = GestureDetector(
      onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TaranemContent(text,w)));
      },
      child: Container(
        margin: new EdgeInsets.symmetric(vertical: 5.0),
        alignment: FractionalOffset.centerRight,
        child: Hero(tag:MyTag,child: Utils.music2),
      ),
    );

    return Container(
        height: 100.0,
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
