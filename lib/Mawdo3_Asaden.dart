import 'package:flutter/material.dart';
import 'utils.dart';

class Mawdo3_Asaden extends StatelessWidget {
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
          appBar: Utils.MyAppBar("مثل الأسدين",0),
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
              children: <Widget>[
                Center(
                    child: Text(
                  "مثل الاسدين (حز1:19-9)",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25.0),
                )),
                Center(
                    child: Text(Utils.Mawdo31,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20.0))),
              Container(height: 5.0,),
              Row(
                children: <Widget>[
                 Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        border: new Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: <Widget>[
                          seperate()
                          ,createText("شبل 2"),
                          seperate(),
                          createTextSpan("صدقيا الملك\n",Utils.Mawdo311),
                          seperate(),
                          createText(Utils.Mawdo312),
                          seperate(),
                          createText(Utils.Mawdo313),
                          seperate(),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          seperate()
                          ,createText("شبل 1"),
                          seperate(),
                          Stack(children:<Widget>[createTextHidden(Utils.Mawdo311),createTextSpan("يهوأحاز الملك \n",Utils.Mawdo314)]),
                          seperate(),
                          Stack(children:<Widget>[createTextHidden(Utils.Mawdo312),createText(Utils.Mawdo315)]),
                          seperate(),
                          Stack(children:<Widget>[createTextHidden(Utils.Mawdo313),createText(Utils.Mawdo316)]),
                          seperate(),
                        ],
                      ),
                    ),
                  ),
                ],
              )
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
      ]),
    );
  }

  Widget createText(String s) {
    return Center(
      child: Text(s, style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 20.0),textAlign: TextAlign.center,),
    );
  }

  Widget createTextHidden(String s) {
    return Center(
      child: Text(s, style: TextStyle(
          color: Colors.black.withOpacity(0.0),
          fontWeight: FontWeight.w300,
          fontSize: 20.0,),textAlign: TextAlign.center,),
    );
  }


  Widget seperate() {
    return Container(height: 2.0,color: Colors.black,);
  }

  createTextSpan(String malk,String s) {
    return new RichText(
       textAlign: TextAlign.center,
      text: new TextSpan(
        text: malk,
        style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 20.0,color: Colors.red,),
        children: <TextSpan>[
         new TextSpan(text:s,style: TextStyle(
             fontWeight: FontWeight.w300,
             fontSize: 20.0,color: Colors.black))
        ]
      )
    );

  }
}
