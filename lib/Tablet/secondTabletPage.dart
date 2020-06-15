import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myCV/widgets/tabletProgressIndicator.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:social_media_buttons/social_media_button.dart';

import '../constants.dart';

class SecondTabletPage extends StatefulWidget {
  @override
  _SecondTabletPageState createState() => _SecondTabletPageState();
}

class _SecondTabletPageState extends State<SecondTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Expanded(
                child: new Container(
                  margin: EdgeInsets.only(left: 30.0, top: 30, bottom: 30.0),
                  // height: MediaQuery.of(context).size.height / 2,
                  // width: 100,
                  color: Colors.black,
                  child: Expanded(
                    child: CircularParticle(
                      key: UniqueKey(),
                      awayRadius: 100,
                      numberOfParticles: 120,
                      speedOfParticles: 1,
                      height: 900,
                      width: MediaQuery.of(context).size.width / 1,
                      onTapAnimation: true,
                      particleColor: Colors.white.withAlpha(150),
                      awayAnimationDuration: Duration(milliseconds: 600),
                      maxParticleSize: 1,
                      isRandSize: true,
                      isRandomColor: true,
                      randColorList: [Colors.white],
                      awayAnimationCurve: Curves.easeInOutBack,
                      enableHover: true,
                      hoverColor: Colors.white,
                      hoverRadius: 90,
                      connectDots: true,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: new Container(
                        margin:
                            EdgeInsets.only(left: 30.0, top: 30, bottom: 30.0),
                        // width: MediaQuery.of(context).size.width / 2,
                        child: Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 40.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                        height: 3.0,
                                        width: 120.0,
                                        color: violet,
                                      ),
                                    ),
                                    Text(
                                      "About Me",
                                      style: GoogleFonts.varelaRound(
                                          textStyle: new TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "I'm a Full Stack web and Flutter\n developer",
                                  style: GoogleFonts.robotoMono(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(height: 20),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    height: 3.0,
                                    width: 120.0,
                                    color: violet,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                    "I’m a Developer and always keen to learn new \ntechnology I am a dedicated, organized and \nmethodical individual. I have good interpersonal\n skills, am an excellent team worker and am keen and \nvery willing to learn and develop new skills.",
                                    // textAlign: TextAlign.center,
                                    style: GoogleFonts.varelaRound(
                                        textStyle: new TextStyle(
                                            color: Colors.white,
                                            fontSize: 20))),
                                SizedBox(height: 20),
                                Expanded(
                                  child: Row(
                                    children: [
                                      SocialMediaButton.linkedin(
                                        url:
                                            "https://www.linkedin.com/in/sahyog-saini-4b511617b/",
                                        color: violet,
                                        size: 20.0,
                                      ),
                                      SocialMediaButton.twitter(
                                        url: "https://twitter.com/SainiSahyog",
                                        color: violet,
                                        size: 20.0,
                                      ),
                                      SocialMediaButton.facebook(
                                        url:
                                            "https://www.facebook.com/sahyog.cse",
                                        color: violet,
                                        size: 20.0,
                                      ),
                                      SocialMediaButton.instagram(
                                        url:
                                            "https://www.instagram.com/the_phenomenal.__/",
                                        color: violet,
                                        size: 20.0,
                                      ),
                                      SocialMediaButton.github(
                                        url:
                                            "https://github.com/thephenomenal10",
                                        color: violet,
                                        size: 20.0,
                                      ),
                                      SocialMediaButton.medium(
                                        url:
                                            "https://medium.com/@sahyogsaini.cse",
                                        color: violet,
                                        size: 20.0,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: new Container(
            color: blueColor,
            child: Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 50.0),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                            "My Skills",
                            style: GoogleFonts.varelaRound(
                                textStyle: new TextStyle(
                                    color: Colors.white, fontSize: 22)),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: progressIndicatorTablet(
                                  context: context,
                                  leading: "Flutter",
                                  percent: "90%",
                                  fillPer: 0.9),
                            ),
                            Expanded(
                              child: progressIndicatorTablet(
                                  context: context,
                                  leading: "AWS",
                                  percent: "70%",
                                  fillPer: 0.7),
                            ),
                            Expanded(
                              child: progressIndicatorTablet(
                                  context: context,
                                  leading: "Firbase",
                                  percent: "75%",
                                  fillPer: 0.75),
                            ),
                            Expanded(
                              child: progressIndicatorTablet(
                                  context: context,
                                  leading: "Mongo DB",
                                  percent: "80%",
                                  fillPer: 0.8),
                            ),
                            Expanded(
                              child: progressIndicatorTablet(
                                  context: context,
                                  leading: "React Native",
                                  percent: "70%",
                                  fillPer: 0.7),
                            ),
                            Expanded(
                              child: progressIndicatorTablet(
                                  context: context,
                                  leading: "Unity 3D",
                                  percent: "75%",
                                  fillPer: 0.75),
                            ),
                            Expanded(
                              child: progressIndicatorTablet(
                                  context: context,
                                  leading: "Cloud Firestore",
                                  percent: "75%",
                                  fillPer: 0.75),
                            ),
                            Expanded(
                              child: progressIndicatorTablet(
                                  context: context,
                                  leading: "Ethereum",
                                  percent: "50%",
                                  fillPer: 0.5),
                            ),
                            Expanded(
                              child: progressIndicatorTablet(
                                  context: context,
                                  leading: "C++",
                                  percent: "80%",
                                  fillPer: 0.8),
                            ),
                            Expanded(
                              child: progressIndicatorTablet(
                                  context: context,
                                  leading: "C",
                                  percent: "78%",
                                  fillPer: 0.78),
                            ),
                            Expanded(
                              child: progressIndicatorTablet(
                                  context: context,
                                  leading: "Java Script",
                                  percent: "75%",
                                  fillPer: 0.75),
                            ),
                            Expanded(
                              child: progressIndicatorTablet(
                                  context: context,
                                  leading: "CSS",
                                  percent: "82%",
                                  fillPer: 0.82),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
