import 'package:myCV/Desktop/fourthDesktopPage.dart';
import 'package:myCV/Mobile/fourthMobilePage.dart';
import 'package:myCV/Tablet/fourthTabletPage.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

class FourthPageLayout extends StatelessWidget {
  const FourthPageLayout({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: fourthMobilePage(context),
      tablet: fourthTabletPage(context),
      desktop: fourthDesktopPage(context),
    );
  }
}
