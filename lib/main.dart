import 'package:flutter/material.dart';
import 'package:myCV/Screens/home_page.dart';
import 'package:myCV/Screens/splashScreen.dart';


void main(){
  runApp(
    new MaterialApp(
        title: "MY CV",
        home: HomePage(),
        debugShowCheckedModeBanner: false,
    )
  );
}