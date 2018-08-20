import 'package:flutter/material.dart';
import 'DayOneScreen.dart';
import 'DayTwoScreen.dart';
import 'DayThreeScreen.dart';
import 'utils.dart';


class MyApp extends StatelessWidget {
 @override
  Widget build (BuildContext context) {

    AppBar myAppBar = Utils.MyAppBar("إجتماع الخدام",0,context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: Utils.MyDrawer(myAppBar.preferredSize.height,context),
          backgroundColor: Color.fromRGBO(83, 8, 14, 1.0),
          body: MyHomePage(),
          appBar: myAppBar,
        )
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Utils.background,
        GridView.count(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          crossAxisCount: 3,
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          childAspectRatio: 1.5,
          children: <Widget>[
            RaisedButton(child: Utils.env1,padding: EdgeInsets.all(0.0),color: Color.fromRGBO(1, 1, 1, 0.0),
              onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>DayOneScreen()));}  ,),
            RaisedButton(child: Utils.env2, padding: EdgeInsets.all(0.0),color: Color.fromRGBO(1, 1, 1, 0.0),
              onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>DayTwoScreen()));}  ,),
            RaisedButton(child: Utils.env3,padding: EdgeInsets.all(0.0),color: Color.fromRGBO(1, 1, 1, 0.0),
              onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>DayThreeScreen()));}  ,),

          ],
        ),
        ]
    );
  }
}
