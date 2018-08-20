import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'utils.dart';


class Videos extends StatefulWidget{
  @override
  _VideoState createState()=> new _VideoState();
}

class _VideoState extends State<Videos> {
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
          appBar: Utils.MyAppBar("مثل عود الكرم", 0,context),
        ));
  }

  getMyMawade3Screen(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.0),
      margin: const EdgeInsets.only(top: 8.0),
      child: ListView(
        children: <Widget>[
          getListChild("رؤيا العظام اليابسة", context),
          getListChild("رؤيا مجد الله", context),
        ],
      ),
    );
  }
  getListChild(String text, BuildContext context) {
      final planetCard = GestureDetector(
      onTap: () {
        var youtube = new FlutterYoutube();

        if(text=="رؤيا العظام اليابسة"){
          youtube.playYoutubeVideoById(
            apiKey: "AIzaSyABWU6ihkSSFKhG4ef6pl2s4DSDiP_I2O4",
            videoId: "-YsVzzay67c",
            autoPlay: true,
            fullScreen: true
          );
        }
        else{
          youtube.playYoutubeVideoById(
            apiKey: "AIzaSyABWU6ihkSSFKhG4ef6pl2s4DSDiP_I2O4",
            videoId: "EKh_U2NnIs8",
              autoPlay: true,
              fullScreen: true
          );
        }

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
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 27.0),textAlign: TextAlign.center,textDirection: TextDirection.rtl,
              ),
            )),
      ),
    );

    final planetThumbnail = GestureDetector(
      onTap: () {
        var youtube = new FlutterYoutube();

        if(text=="رؤيا العظام اليابسة"){
          youtube.playYoutubeVideoById(
              apiKey: "AIzaSyABWU6ihkSSFKhG4ef6pl2s4DSDiP_I2O4",
              videoId: "-YsVzzay67c",
              autoPlay: true,
              fullScreen: true
          );
        }
        else{
          youtube.playYoutubeVideoById(
              apiKey: "AIzaSyABWU6ihkSSFKhG4ef6pl2s4DSDiP_I2O4",
              videoId: "PBxqAU0LWgo",
              autoPlay: true,
              fullScreen: true
          );
        }
      },
      child: Container(
        margin: new EdgeInsets.symmetric(vertical: 16.0),
        alignment: FractionalOffset.centerRight,
        child: Utils.seal),
    );

    return Container(
        height: 112.0,
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


  void playYoutubeVideo() {
    FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: "AIzaSyA3lV6KuEWbsD8YgkCGNMH87mlSL27GSx0",
      videoUrl: "https://www.youtube.com/watch?v=-YsVzzay67c",
    );
  }

  Youtube() {
    print("here");
    FlutterYoutube.playYoutubeVideoByUrl(
        apiKey: "AIzaSyA3lV6KuEWbsD8YgkCGNMH87mlSL27GSx0",
        videoUrl: "https://www.youtube.com/watch?v=-YsVzzay67c",
        autoPlay: true, //default falase
        fullScreen: true //default false
    );
  }
}
