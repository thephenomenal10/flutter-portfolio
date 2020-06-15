import 'package:flutter/material.dart';
import 'package:myCV/Layout/firstPageLayout.dart';
import 'package:myCV/Layout/secondPageLayout.dart';

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
            // SecondPage(),
            // thirdPage(context),
            // fourthPage(context),
            // FifthPage(),
            // SixthPage(),
          ],
        ));
  }
}
  