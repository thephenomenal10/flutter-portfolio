import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../constants.dart';

Widget progressIndicatorMobile(
    {BuildContext context, leading, percent, fillPer}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Padding(
            padding: EdgeInsets.all(15.0),
            child: new CircularPercentIndicator(
              radius: 50.0,
              animation: true,
              addAutomaticKeepAlive: true,
              animateFromLastPercent: true,
              animationDuration: 2000,
              center: new Text(
                percent,
                style: new TextStyle(color: Colors.white),
              ),
              curve: Curves.bounceInOut,
              footer: new Text(
                leading,
                style: new TextStyle(color: Colors.white, fontSize: 10),
              ),
              lineWidth: 4.0,
              percent: fillPer,
              progressColor: violet,
            )),
      ),
    ],
  );
}
