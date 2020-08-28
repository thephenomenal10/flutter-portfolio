import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myCV/widgets/mobileProgressIndicator.dart';
import 'package:myCV/widgets/tabletProgressIndicator.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:social_media_buttons/social_media_button.dart';

import '../constants.dart';

class SecondMobilePage extends StatefulWidget {
  @override
  _SecondMobilePageState createState() => _SecondMobilePageState();
}

class _SecondMobilePageState extends State<SecondMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            new Container(
              margin: EdgeInsets.only(left: 30.0, top: 30),
              // height: MediaQuery.of(context).size.height / 2,
              // width: 100,
              color: Colors.black,
              child: CircularParticle(
                key: UniqueKey(),
                awayRadius: 150,
                numberOfParticles: 40,
                speedOfParticles: 1,
                height: 400,
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
            Row(
              children: [
                new Container(
                  margin: EdgeInsets.only(left: 15.0, top: 40, bottom: 15.0),
                  // width: MediaQuery.of(context).size.width / 2,
                  child: Container(
                    margin: EdgeInsets.only(left: 15.0),
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
                                width: 40.0,
                                color: violet,
                              ),
                            ),
                            Text(
                              "About Me",
                              style: GoogleFonts.varelaRound(
                                  textStyle: new TextStyle(
                                      color: Colors.white, fontSize: 12)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "I'm a Full Stack web and Flutter\n developer",
                          style: GoogleFonts.robotoMono(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 3.0,
                            width: 40.0,
                            color: violet,
                          ),
                        ),
                        SizedBox(height: 13),
                          Text(
                              "I’m a Developer and always keen to learn new \ntechnology I am a dedicated, organized and \nmethodical individual. I have good interpersonal skills, am an excellent team\n worker and am keen and very willing \nto learn and develop new skills.",
                              // textAlign: TextAlign.center,
                              style: GoogleFonts.varelaRound(
                                  textStyle: new TextStyle(
                                      color: Colors.white, fontSize: 18))),
                        SizedBox(height: 8),
                        Row(
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
                              url: "https://www.facebook.com/sahyog.cse",
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
                              url: "https://github.com/thephenomenal10",
                              color: violet,
                              size: 20.0,
                            ),
                            SocialMediaButton.medium(
                              url: "https://medium.com/@sahyogsaini.cse",
                              color: violet,
                              size: 20.0,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        new Container(
          color: blueColor,
          child: Container(
            margin: EdgeInsets.only(left: 10.0, top: 10.0),
              child:Column(
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
                          width: 40.0,
                          color: violet,
                        ),
                      ),
                      Text(
                        "My Skills",
                        style: GoogleFonts.varelaRound(
                            textStyle: new TextStyle(
                                color: Colors.white, fontSize: 12)),
                      ),
                    ],
                  ),
                    Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    progressIndicatorTablet(
                        context: context,
                        leading: "Flutter",
                        percent: "80%",
                        fillPer: 0.8),
                    progressIndicatorTablet(
                        context: context,
                        leading: "AWS",
                        percent: "55%",
                        fillPer: 0.55),
                    progressIndicatorTablet(
                        context: context,
                        leading: "Firbase",
                        percent: "75%",
                        fillPer: 0.75),
                    progressIndicatorTablet(
                        context: context,
                        leading: "Mongo DB",
                        percent: "80%",
                        fillPer: 0.8),
                    progressIndicatorTablet(
                        context: context,
                        leading: "React Native",
                        percent: "50%",
                        fillPer: 0.5),
                    progressIndicatorTablet(
                        context: context,
                        leading: "Express Js",
                        percent: "75%",
                        fillPer: 0.75),
                    progressIndicatorTablet(
                        context: context,
                        leading: "Node Js",
                        percent: "70%",
                        fillPer: 0.7),
                    progressIndicatorTablet(
                        context: context,
                        leading: "Ethereum",
                        percent: "50%",
                        fillPer: 0.5),
                    progressIndicatorTablet(
                        context: context,
                        leading: "C/C++",
                        percent: "80%",
                        fillPer: 0.8),
                    progressIndicatorTablet(
                        context: context,
                        leading: "Java Script",
                        percent: "75%",
                        fillPer: 0.75),
                    progressIndicatorTablet(
                        context: context,
                        leading: "CSS",
                        percent: "82%",
                        fillPer: 0.82),
                  ],
                ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
