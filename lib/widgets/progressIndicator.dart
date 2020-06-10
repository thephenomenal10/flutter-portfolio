import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../constants.dart';

Widget progressIndicator({BuildContext context, leading, percent, fillPer}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      new Text(
        leading,
        style: GoogleFonts.varelaRound(
            textStyle: new TextStyle(color: Colors.white, fontSize: 15)),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: new LinearPercentIndicator(
          width: 600,
          animation: true,
          lineHeight: 12.0,
          animationDuration: 2000,
          percent: fillPer,
          center: Text(
            percent,
            style: new TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)
          ),
          linearStrokeCap: LinearStrokeCap.roundAll,
          progressColor: violet,
          addAutomaticKeepAlive: true,
          animateFromLastPercent: true,
          curve: Curves.bounceInOut,
          restartAnimation: false,
        ),
      ),
    ],
  );
}
