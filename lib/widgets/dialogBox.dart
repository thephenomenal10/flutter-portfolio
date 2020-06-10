import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';




class DialogBox {
  show(BuildContext context, String title, String desc) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            title: Text(
              title,
              style: TextStyle(
                  color: violet, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    desc,
                    style: GoogleFonts.varelaRound(
                        textStyle:
                            new TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    return Navigator.pop(context);
                  },
                  child: Text(
                    "OK",
                    style: new TextStyle(color: Colors.white),
                  )),
            ],
          );
        });
  }
}
