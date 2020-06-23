import 'package:flutter/material.dart';
import 'package:myCV/Screens/splashScreen.dart';


void main(){
  runApp(
    new MaterialApp(
        title: "MY CV",
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
    )
  );
}