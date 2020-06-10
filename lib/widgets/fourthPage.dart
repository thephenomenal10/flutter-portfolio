import 'package:flutter/material.dart';
import 'package:hover_effect/hover_effect.dart';
import 'package:myCV/widgets/dialogBox.dart';
import 'package:decoding_text_effect/decoding_text_effect.dart';

import '../constants.dart';

Widget fourthPage(BuildContext context) {
  return Row(
    children: [
      new Container(
        width: MediaQuery.of(context).size.width / 5,
        color: blueColor,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RotationTransition(
                turns: new AlwaysStoppedAnimation(270 / 360),
                child: DecodingTextEffect(
                  "PORTFOLIO",
                  decodeEffect: DecodeEffect.fromEnd,
                  textStyle: new TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4.0),
                ),
              ),
            ],
          ),
        ),
      ),
      new Container(
        margin: EdgeInsets.only(left: 350, top: 50, bottom: 50.0),
        // width: 860,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 350,
                  child: HoverCard(
                    builder: (context, hovering) {
                      return Container(
                          color: Color(0xFFE9E9E9),
                          // child: Image.network(
                          //     "https://1.bp.blogspot.com/-7IyIlor3RBw/Xt5CsR-RJ0I/AAAAAAAAACg/rkEJwg4oor4wPpdUM6WYfCEf23x_0zAEwCNcBGAsYHQ/s1600/ncrb.jpeg",
                          //     fit: BoxFit.fitWidth));
                          child: Image.asset("assets/ncrb.jpeg",fit: BoxFit.fitWidth)
                          );
                    },
                    depth: 10,
                    depthColor: Colors.grey[500],
                    onTap: () {
                      return DialogBox().show(context, "NCRB App",
                          "This is android application for users as well\n as users. In  this application we had implimented \n all the features which can done Offline.");
                    },
                    shadow: BoxShadow(
                        color: Colors.purple[200],
                        blurRadius: 30,
                        spreadRadius: -40,
                        offset: Offset(0, 40)),
                  ),
                ),
                SizedBox(width: 200),
                //2 nd card
                Container(
                  width: 350,
                  height: 350,
                  child: HoverCard(
                    builder: (context, hovering) {
                      return Container(
                          color: Color(0xFFE9E9E9),
                          // child: Image.network(
                          //     "https://1.bp.blogspot.com/-H_dz4SWf_1s/Xt5DQRlgBXI/AAAAAAAAACo/y5y55kuGCo0M7MEzmlUwk08k50eiR0CFQCNcBGAsYHQ/s1600/fintech.jpeg",
                          //     fit: BoxFit.cover)
                          child: Image.asset("assets/fintech.jpeg",fit: BoxFit.cover)

                              );
                    },
                    depth: 10,
                    depthColor: Colors.grey[500],
                    onTap: () {
                      return DialogBox().show(context, "Fintech WebApp",
                          "This website is developed by common technology like \nHTML, css, JavaScript having several features \nlike Expense Manager, Loan manager, Tax Calculator,\n Currency convertor with smooth and simple Ui experience ");
                    },
                    shadow: BoxShadow(
                        color: Colors.purple[200],
                        blurRadius: 30,
                        spreadRadius: -40,
                        offset: Offset(0, 40)),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 350,
                  child: HoverCard(
                    builder: (context, hovering) {
                      return Container(
                          color: Color(0xFFE9E9E9),
                          // child: Image.network(
                          //     "https://1.bp.blogspot.com/-DMuzSKnvfnc/Xt5mtSI83yI/AAAAAAAAADM/gdLDG9uTXPEEtIx-lco1ieOCqSV7uVA5QCNcBGAsYHQ/s1600/Annotation%2B2020-06-08%2B215402.png",
                          //     fit: BoxFit.cover)
                          child: Image.asset("assets/nat.png",fit: BoxFit.cover)

                              );
                    },
                    depth: 10,
                    depthColor: Colors.grey[500],
                    onTap: () {
                      return DialogBox().show(context, "Natours WebApp",
                          "This website is developed using React, Node js,\n Mongoose for data modeling and mongo Db for database.\n This users can buy the tours to travel with their guide, etc");
                    },
                    shadow: BoxShadow(
                        color: Colors.purple[200],
                        blurRadius: 30,
                        spreadRadius: -40,
                        offset: Offset(0, 40)),
                  ),
                ),
                SizedBox(width: 200),
                //4 nd card
                Container(
                  width: 350,
                  height: 350,
                  child: HoverCard(
                    builder: (context, hovering) {
                      return Container(
                          color: Color(0xFFE9E9E9),
                          // child: Image.network(
                          //     "https://1.bp.blogspot.com/-bxAQNWuwjMY/Xt5lAji8TJI/AAAAAAAAADA/Z4XJ9rdQqi0YyFKbbpyQOStYCaUz4QnBACNcBGAsYHQ/s1600/Screenshot_20200608-212818%2B%25281%2529.png",
                          //     fit: BoxFit.contain)
                          child: Image.asset("assets/exerholic.png",fit: BoxFit.contain)

                          );
                    },
                    depth: 10,
                    depthColor: Colors.grey[500],
                    onTap: () {
                      return DialogBox().show(context, "Exerholic App",
                          "This Application is developed using Flutter,\n firebase as a backend service .\n I developed this application for RSTech Software Sol.,\n Application have several features like to watch\n particluar exercise videos, even they can book \nand appoint the classes of given package by the Administrator ");
                    },
                    shadow: BoxShadow(
                        color: Colors.purple[200],
                        blurRadius: 30,
                        spreadRadius: -40,
                        offset: Offset(0, 40)),
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
