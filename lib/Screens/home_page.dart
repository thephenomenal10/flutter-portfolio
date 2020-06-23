import 'package:flutter/material.dart';
import 'package:myCV/Layout/SixthLayoutPage.dart';
import 'package:myCV/Layout/fifthLayoutPage.dart';
import 'package:myCV/Layout/firstPageLayout.dart';
import 'package:myCV/Layout/fourthLayoutPage.dart';
import 'package:myCV/Layout/secondPageLayout.dart';
import 'package:myCV/Layout/thirdLayoutPage.dart';

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
          scrollDirection: Axis.vertical,
          children: [
            FirstPageLayout(),
            SecondPageLayout(),
            ThirdPageLayout(),
            FourthPageLayout(),
            FifthPageLayout(),
            SixthPageLayout(),
            // SixthPage(),
          ],
        ));
  }
}
