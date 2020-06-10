import 'package:flutter/material.dart';
import 'package:myCV/Screens/home_page.dart';
import 'package:myCV/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myCV/widgets/mySlide.dart';

/*
splash screen
*/

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // splashscreen duration
    Future.delayed(Duration(seconds: 3), () {
     Route route = MySlide(
                        builder: (context) =>
                            HomePage());
                    Navigator.push(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blueColor,
      child: SpinKitDualRing(
        color: Colors.white,
        size: 100.0,
      ),
    );
  }
}
