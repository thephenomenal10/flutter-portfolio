import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class FirstDesktopPage extends StatefulWidget {
  const FirstDesktopPage({Key key}) : super(key: key);

  @override
  _FirstDesktopPageState createState() => _FirstDesktopPageState();
}

class _FirstDesktopPageState extends State<FirstDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: new Container(
            margin: EdgeInsets.only(left: 50.0, top: 50, bottom: 50.0),
            // width: MediaQuery.of(context).size.width / 2,
            color: blueColor,
            child: Container(
              margin: EdgeInsets.only(left: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 3.0,
                          width: 120.0,
                          color: violet,
                        ),
                      ),
                      Text(
                        "Hello, I'm",
                        style: GoogleFonts.varelaRound(
                            textStyle: new TextStyle(
                                color: Colors.white, fontSize: 22)),
                      ),
                    ],
                  ),
                  DelayedDisplay(
                      delay: Duration(seconds: 1),
                      fadingDuration: Duration(seconds: 2),
                      slidingCurve: Curves.bounceInOut,
                      slidingBeginOffset: Offset(1.3, 1.4),
                      child: Text("<Sahyog Saini />",
                          style: GoogleFonts.robotoMono(
                            fontSize: 70,
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))),
                  SizedBox(height: 20),
                  TypewriterAnimatedTextKit(
                    text: [
                      "Flutter Developer",
                      "Full Stack Developer",
                      "Node Js Developer",
                      "Project Leader"
                    ],
                    textStyle: TextStyle(
                      fontSize: 35.0,
                      fontFamily: "Canterbury",
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                    isRepeatingAnimation: true,
                    repeatForever: true,
                    speed: Duration(milliseconds: 90),
                    pause: Duration(seconds: 1),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: new Container(
              margin: EdgeInsets.only(top: 50, bottom: 50.0, right: 50),
              // width: 860,
              color: Colors.black,
              // child: new Image.network("https://1.bp.blogspot.com/-0eteKHKmd4M/Xt5jO5NnWLI/AAAAAAAAAC0/ekOUQiuCUF8yU1o1hkpgcOMr_SxhLTjpQCNcBGAsYHQ/s1600/IMG_20200608_145737.jpg",
              //   excludeFromSemantics: true,
              //   fit: BoxFit.fitWidth,
              // ),
              child: Image.asset("assets/me.jpg",
                  excludeFromSemantics: true, fit: BoxFit.fitWidth)),
        ),
      ],
    );
  }
}
