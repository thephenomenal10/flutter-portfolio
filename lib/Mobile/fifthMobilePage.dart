
import 'package:decoding_text_effect/decoding_text_effect.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myCV/widgets/testimonial.dart';
import 'package:particles_flutter/particles_flutter.dart';

import '../constants.dart';

class FifthMobilePage extends StatefulWidget {
  @override
  _FifthMobilePageState createState() => _FifthMobilePageState();
}

class _FifthMobilePageState extends State<FifthMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircularParticle(
          key: UniqueKey(),
          awayRadius: 100,
          numberOfParticles: 120,
          speedOfParticles: 1,
          height: MediaQuery.of(context).size.height/1,
          width: MediaQuery.of(context).size.width/1,
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
        Container(
          // color: Colors.black,
          height: MediaQuery.of(context).size.height / 1,
          margin: EdgeInsets.only(top: 70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Container(
                      height: 3.0,
                      width: 70.0,
                      color: violet,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Testimonnials",
                      style: GoogleFonts.varelaRound(
                          textStyle:
                              new TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 70),
                child: DecodingTextEffect(
                  "Reviews",
                  decodeEffect: DecodeEffect.fromEnd,
                  textStyle: new TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4.0),
                ),
              ),
              SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width/1,
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                          height: 400,
                          autoPlay: true,
                          pauseAutoPlayOnTouch: true,
                          scrollDirection: Axis.horizontal),
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int i) => Container(
                          width: 300,
                          child: new Container(
                            child: new Column(
                              children: [
                                Container(
                                  child: new Text(
                                    data[i]['desc'],
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.ltr,
                                    style: GoogleFonts.varelaRound(
                                        textStyle: new TextStyle(
                                            color: Colors.white, fontSize: 17)),
                                  ),
                                ),
                                SizedBox(height: 30.0),
                                Container(
                                  margin: EdgeInsets.only(left: 100),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 70.0),
                                        child: Container(
                                          height: 3.0,
                                          width: 30.0,
                                          color: violet,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          data[i]['name'],
                                          style: GoogleFonts.varelaRound(
                                              textStyle: new TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12)),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
