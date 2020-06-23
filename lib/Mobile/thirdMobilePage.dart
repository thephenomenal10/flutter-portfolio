import 'package:decoding_text_effect/decoding_text_effect.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../constants.dart';

Widget thirdMobilePage(BuildContext context) {
  return Expanded(
    child: Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height / 1,
      margin: EdgeInsets.only(top: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 3.0,
                    width: 60.0,
                    color: violet,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Services",
                    style: GoogleFonts.varelaRound(
                        textStyle:
                            new TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 10),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 40),
              child: DecodingTextEffect(
                "What I Do",
                decodeEffect: DecodeEffect.fromEnd,
                textStyle: new TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4.0),
              ),
            ),
          ),
          // SizedBox(height: MediaQuery.of(context).size.height/20),
          Column(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: new Icon(
                      FlutterIcons.code_mdi,
                      color: violet,
                      size: 40,
                    ),
                  ),
                  Text("WebApp Development",
                      style: GoogleFonts.robotoMono(
                        fontSize: 18,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: 3.0,
                  width: 80.0,
                  color: blueColor,
                ),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: new Icon(
                      FlutterIcons.material_design_mco,
                      color: violet,
                      size: 40,
                    ),
                  ),
                  Text("UI/UX Design",
                      style: GoogleFonts.robotoMono(
                        fontSize: 18,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: 3.0,
                  width: 80.0,
                  color: blueColor,
                ),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: new Icon(
                      Icons.developer_mode,
                      color: violet,
                      size: 40,
                    ),
                  ),
                  Text("Mobile App Development",
                      style: GoogleFonts.robotoMono(
                        fontSize: 18,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height/6),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      color: blueColor,
                      padding: EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  child: Icon(AntDesign.smile_circle,
                                      size: 18, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "2+",
                                    style: GoogleFonts.varelaRound(
                                      textStyle: new TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "Happy Clients",
                                    style: GoogleFonts.varelaRound(
                                        textStyle: new TextStyle(
                                            color: Colors.white, fontSize: 12)),
                                  ),
                                ),
                              ],
                            ),
                          ),                                  
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  child: Icon(FlutterIcons.ios_pizza_ion,
                                      size: 18, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "150+",
                                    style: GoogleFonts.varelaRound(
                                      textStyle: new TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "Pizzas Ordered",
                                    style: GoogleFonts.varelaRound(
                                        textStyle: new TextStyle(
                                            color: Colors.white, fontSize: 12)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   width: 130,
                          // ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  child: Icon(FlutterIcons.comment_quotes_fou,
                                      size: 18, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    child: Text(
                                  "5+",
                                  style: GoogleFonts.varelaRound(
                                      textStyle: new TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                )),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "Reviews",
                                    style: GoogleFonts.varelaRound(
                                        textStyle: new TextStyle(
                                            color: Colors.white, fontSize: 12)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  child: Icon(Icons.developer_mode,
                                      size: 18, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text("12000+",
                                      style: GoogleFonts.varelaRound(
                                          textStyle: new TextStyle(
                                              color: Colors.white,
                                              fontSize: 12))),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "Lines Of Code",
                                    style: GoogleFonts.varelaRound(
                                        textStyle: new TextStyle(
                                            color: Colors.white, fontSize: 12)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
