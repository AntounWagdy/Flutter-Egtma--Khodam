import 'dart:async';
import 'package:flutter/material.dart';
import 'MyApp.dart';
import 'utils.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/services.dart';
import 'Program.dart';
import 'dart:typed_data';


void main(){
  //timeDilation =1.5;
  runApp(new MaterialApp(
    home: new SplashScreen(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new MyApp()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime(x) async {
    var _duration = new Duration(seconds: x);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }


  @override
  void initState() {
    super.initState();
    Utils = new Utilities();
    startTime(2);
  }


  @override
  Widget build(BuildContext context) {

    // Only portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);


    return new Scaffold(
      body: new Center(
        child: Utils.splashScreen,
      ),
    );
  }
}