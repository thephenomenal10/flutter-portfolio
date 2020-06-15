import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myCV/widgets/progressIndicator.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:social_media_buttons/social_media_button.dart';

import '../constants.dart';

class SecondDesktopPage extends StatefulWidget {
  @override
  _SecondDesktopPageState createState() => _SecondDesktopPageState();
}

class _SecondDesktopPageState extends State<SecondDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            new Container(
              margin: EdgeInsets.only(left: 50.0, top: 50, bottom: 50.0),
              width: MediaQuery.of(context).size.width / 2,
              color: Colors.black,
              child: CircularParticle(
                key: UniqueKey(),
                awayRadius: 100,
                numberOfParticles: 120,
                speedOfParticles: 1,
                height: 900,
                width: MediaQuery.of(context).size.width / 2,
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
                  margin: EdgeInsets.only(left: 50.0, top: 50, bottom: 50.0),
                  width: MediaQuery.of(context).size.width / 2,
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
                              "About Me",
                              style: GoogleFonts.varelaRound(
                                  textStyle: new TextStyle(
                                      color: Colors.white, fontSize: 22)),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "I'm a Full Stack web and Flutter developer",
                          style: GoogleFonts.robotoMono(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 3.0,
                            width: 120.0,
                            color: violet,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                            "I’m a Developer and always keen to learn new technology I am a dedicated, organized and methodical individual. I have good interpersonal skills, am an excellent team worker and am keen and very willing to learn and develop new skills.",
                            style: GoogleFonts.varelaRound(
                                textStyle: new TextStyle(
                                    color: Colors.white, fontSize: 22))),
                        SizedBox(height: 20),
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
        Expanded(
          child: new Container(
            width: 880,
            color: blueColor,
            child: Container(
              margin: EdgeInsets.only(left: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
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
                  SizedBox(height: 20.0),
                  progressIndicator(
                      context: context,
                      leading: "Flutter",
                      percent: "90%",
                      fillPer: 0.9),
                  SizedBox(height: 10.0),
                  progressIndicator(
                      context: context,
                      leading: "AWS",
                      percent: "70%",
                      fillPer: 0.7),
                  SizedBox(height: 10.0),
                  progressIndicator(
                      context: context,
                      leading: "Firbase",
                      percent: "75%",
                      fillPer: 0.75),
                  SizedBox(height: 10.0),
                  progressIndicator(
                      context: context,
                      leading: "Mongo DB",
                      percent: "80%",
                      fillPer: 0.8),
                  SizedBox(height: 10.0),
                  progressIndicator(
                      context: context,
                      leading: "React Native",
                      percent: "70%",
                      fillPer: 0.7),
                  SizedBox(height: 10.0),
                  progressIndicator(
                      context: context,
                      leading: "Unity 3D",
                      percent: "75%",
                      fillPer: 0.75),
                  SizedBox(height: 10.0),
                  progressIndicator(
                      context: context,
                      leading: "Cloud Firestore",
                      percent: "75%",
                      fillPer: 0.75),
                  SizedBox(height: 10.0),
                  progressIndicator(
                      context: context,
                      leading: "Ethereum",
                      percent: "50%",
                      fillPer: 0.5),
                  SizedBox(height: 10.0),
                  progressIndicator(
                      context: context,
                      leading: "C++",
                      percent: "80%",
                      fillPer: 0.8),
                  SizedBox(height: 10.0),
                  progressIndicator(
                      context: context,
                      leading: "C",
                      percent: "78%",
                      fillPer: 0.78),
                  SizedBox(height: 10.0),
                  progressIndicator(
                      context: context,
                      leading: "Java Script",
                      percent: "75%",
                      fillPer: 0.75),
                  SizedBox(height: 10.0),
                  progressIndicator(
                      context: context,
                      leading: "CSS",
                      percent: "82%",
                      fillPer: 0.82),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
