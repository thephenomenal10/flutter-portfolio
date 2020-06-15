
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

class ThirdPageLayout extends StatelessWidget {
  const ThirdPageLayout({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ThirdMobilePage(),
      tablet: ThirdTabletPage(),
      desktop: ThirdDesktopPage(),
    );
  }
}
