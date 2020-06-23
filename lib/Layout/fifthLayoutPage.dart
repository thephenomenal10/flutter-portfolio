import 'package:myCV/Desktop/fifthDesktopPage.dart';
import 'package:myCV/Mobile/fifthMobilePage.dart';
import 'package:myCV/Tablet/fifthTabletPage.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

class FifthPageLayout extends StatelessWidget {
  const FifthPageLayout({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: FifthMobilePage(),
      tablet: FifthTabletPage(),
      desktop: FifthDesktopPage(),
      
    );
  }
}