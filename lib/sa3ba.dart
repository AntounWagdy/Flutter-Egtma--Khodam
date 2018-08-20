import 'package:flutter/material.dart';
import 'utils.dart';

class Sa3ba extends StatefulWidget {
  _Sa3baState createState() => _Sa3baState();
}

class _Sa3baState extends State<Sa3ba> {

  String rr;
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
          appBar: Utils.MyAppBar("الكلمات الصعبة", 0),
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
                  "الكلمات الصعبة",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30.0),
                )),
                TextField(
                  onChanged: (s){
                    setState(() {
                      rr = s;
                    });
                  },
                  maxLines: 1,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.5),
                      hintText: 'دور من هنا'),
                ),
                Container(height: 5.0,),
                Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(100.0),
                    1: FixedColumnWidth(70.0),
                    2: FixedColumnWidth(170.0),
                  },
                  textDirection: TextDirection.rtl,
                  border: TableBorder.all(color: Colors.black),
                  children: MagicFunction(),
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

  List<TableRow> MagicFunction() {
    var list = new List<TableRow>();
    list.add(TableRow(children: <Widget>[
      Center(
        child: Text(
          "الكلمة",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
        ),
      ),
      Center(
        child: Text(
          "الشاهد",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
        ),
      ),
      Center(
        child: Text(
          "المعنى",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
        ),
      ),
    ]));




    Utils.map1.forEach((k, v) {
      RegExp regExp;
      if(rr == null||rr.isEmpty)
        regExp =
        new RegExp(".*", caseSensitive: false, multiLine: false);
      else
      regExp =
          new RegExp(".*"+rr+".*", caseSensitive: false, multiLine: false);

      if (regExp.hasMatch(k)) {
        list.add(TableRow(children: <Widget>[
          Center(
            child: Text(
              k,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0),
            ),
          ),
          Center(
            child: Text(
              v,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0),
            ),
          ),
          Center(
            child: Text(
              Utils.map2[k],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0),
            ),
          ),
        ]));
      }
    });
    return list;
  }
}
