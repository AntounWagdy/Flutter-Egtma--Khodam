import 'package:flutter/material.dart';
import 'utils.dart';

class TaranemContent extends StatelessWidget{
  String title;
  String content;

  TaranemContent(title,content){
    this.title = title;
    this.content = content;
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
              child: this.getMyMawade3Screen(context)),
          appBar: Utils.MyAppBar(title,0,context),
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
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0),
                    )),
                createParagraph(content),
              ],
            ),
          ),
        ),
        Center(
          heightFactor: 0.0,
          child: Hero(
            tag: title,
            child: Utils.music2,
          ),
        )
      ]
      ),
    );
  }
  createParagraph(String s) {
    return Center(
        child: Text(s,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 19.0,),
          textDirection: TextDirection.rtl,textAlign: TextAlign.center,),
      );
  }
}
