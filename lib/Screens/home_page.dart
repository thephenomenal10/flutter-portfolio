import 'package:flutter/material.dart';
import 'package:myCV/widgets/fifthPage.dart';
import 'package:myCV/widgets/firstPage.dart';
import 'package:myCV/widgets/fourthPage.dart';
import 'package:myCV/widgets/secondPage.dart';
import 'package:myCV/widgets/sixthPage.dart';
import 'package:myCV/widgets/thirdPage.dart';

import '../constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black,
        body: PageView(
              scrollDirection: Axis.vertical,pageSnapping: false,
              children: [
                FirstPage(),
                SecondPage(),
                thirdPage(context),
                fourthPage(context),
                FifthPage(),
                SixthPage(),

          ],
        ));
  }
}
