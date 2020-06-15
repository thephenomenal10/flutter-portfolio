import 'package:myCV/Desktop/firstDesktopPage.dart';
import 'package:myCV/Mobile/firstMobilePage.dart';
import 'package:myCV/Tablet/firstTabletPage.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

class FirstPageLayout extends StatelessWidget {
  const FirstPageLayout({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: FirstMobilePage(),
      tablet: FirstTabletPage(),
      desktop: FirstDesktopPage(),
      
    );
  }
}